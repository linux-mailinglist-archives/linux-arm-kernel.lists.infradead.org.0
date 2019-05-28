Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 955532C517
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 13:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g5tRjWAMezENXBSpRmwv0KKDZSdKMTwavihtnb1egvI=; b=iG3+5Aq2stDEoz
	ItpgbqmjtF3vD7WbpTYV6T1KbBQ5NOok6AiZJCO3CYcEIVeC0KY5SOrnnM8tK/6N6eEpurs6fXKzH
	oQ2I7tbVzrOt8Iaf1p6t27BuGs2//QEvMEGwCqpbAU/aTgF8aD8PIrqZR/mPaMP3b4R0a8tffsyZf
	aswJGFrFjHuRBXWIbz8EWcO0+i0WiYPZ7I0Ja7WVQ3p3yPVvqJJEs2MgS6dpGDp9nv65zlsyIx/VA
	iFdLg9Ym+dUtA1f/dgos7hAi3dnuC2GqiJNBKgAWZfePrE8vlEyzaV1GDhrCP7FEOAFpvUqbJ6e27
	O0NnWjqHYCndkc5JR2Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVZuA-0002ce-OU; Tue, 28 May 2019 11:04:30 +0000
Received: from galois.linutronix.de ([2a01:7a0:2:106d:700::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVZu2-0002bl-CS
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 11:04:24 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1hVZts-0002tB-VI; Tue, 28 May 2019 13:04:13 +0200
Date: Tue, 28 May 2019 13:04:12 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Yury Norov <ynorov@marvell.com>, Andrew Morton <akpm@linux-foundation.org>
Subject: LZ4 decompressor broken on ARM due to missing strchrnul() string
 traverse in cpumask_parse"
Message-ID: <20190528110412.gg66fl67yahtwb6i@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_040422_565924_AFED3A71 
X-CRM114-Status: UNSURE (   5.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:7a0:2:106d:700:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: tglx@linutronix.de, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

fCAgQ0MgICAgICBhcmNoL2FybS9ib290L2NvbXByZXNzZWQvZGVjb21wcmVzcy5vCnxJbiBmaWxl
IGluY2x1ZGVkIGZyb20gaW5jbHVkZS9saW51eC9tbV90eXBlc190YXNrLmg6MTQsCnwgICAgICAg
ICAgICAgICAgIGZyb20gaW5jbHVkZS9saW51eC9tbV90eXBlcy5oOjUsCnwgICAgICAgICAgICAg
ICAgIGZyb20gaW5jbHVkZS9saW51eC9tbXpvbmUuaDoyMSwKfCAgICAgICAgICAgICAgICAgZnJv
bSBpbmNsdWRlL2xpbnV4L2dmcC5oOjYsCnwgICAgICAgICAgICAgICAgIGZyb20gaW5jbHVkZS9s
aW51eC91bWguaDo0LAp8ICAgICAgICAgICAgICAgICBmcm9tIGluY2x1ZGUvbGludXgva21vZC5o
OjIyLAp8ICAgICAgICAgICAgICAgICBmcm9tIGluY2x1ZGUvbGludXgvbW9kdWxlLmg6MTMsCnwg
ICAgICAgICAgICAgICAgIGZyb20gYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkLy4uLy4uLy4uLy4u
L2xpYi9sejQvbHo0X2RlY29tcHJlc3MuYzozOSwKfCAgICAgICAgICAgICAgICAgZnJvbSBhcmNo
L2FybS9ib290L2NvbXByZXNzZWQvLi4vLi4vLi4vLi4vbGliL2RlY29tcHJlc3NfdW5sejQuYzox
MywKfCAgICAgICAgICAgICAgICAgZnJvbSBhcmNoL2FybS9ib290L2NvbXByZXNzZWQvZGVjb21w
cmVzcy5jOjU1Ogp8aW5jbHVkZS9saW51eC9jcHVtYXNrLmg6IEluIGZ1bmN0aW9uIOKAmGNwdW1h
c2tfcGFyc2XigJk6CnxpbmNsdWRlL2xpbnV4L2NwdW1hc2suaDo2MzY6MjE6IGVycm9yOiBpbXBs
aWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhzdHJjaHJudWzigJk7IGRpZCB5b3UgbWVh
biDigJhzdHJjaHLigJk/IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQp8
ICB1bnNpZ25lZCBpbnQgbGVuID0gc3RyY2hybnVsKGJ1ZiwgJ1xuJykgLSBidWY7CnwgICAgICAg
ICAgICAgICAgICAgICBefn5+fn5+fn4KfCAgICAgICAgICAgICAgICAgICAgIHN0cmNocgp8aW5j
bHVkZS9saW51eC9jcHVtYXNrLmg6NjM2OjQyOiBlcnJvcjogaW52YWxpZCBvcGVyYW5kcyB0byBi
aW5hcnkgLSAoaGF2ZSDigJhpbnTigJkgYW5kIOKAmGNvbnN0IGNoYXIgKuKAmSkKfCAgdW5zaWdu
ZWQgaW50IGxlbiA9IHN0cmNocm51bChidWYsICdcbicpIC0gYnVmOwp8ICAgICAgICAgICAgICAg
ICAgICAgfn5+fn5+fn5+fn5+fn5+fn5+fn4gXgp8Y2MxOiBzb21lIHdhcm5pbmdzIGJlaW5nIHRy
ZWF0ZWQgYXMgZXJyb3JzCgozNzEzYTRlMWZkYjhkYTg2Zjk2YTNlNzcwYjA4ZTI3OGQ5NzUyOWI0
IGlzIHRoZSBmaXJzdCBiYWQgY29tbWl0CmNvbW1pdCAzNzEzYTRlMWZkYjhkYTg2Zjk2YTNlNzcw
YjA4ZTI3OGQ5NzUyOWI0CkF1dGhvcjogWXVyeSBOb3JvdiA8eW5vcm92QG1hcnZlbGwuY29tPgpE
YXRlOiAgIFR1ZSBNYXkgMTQgMTU6NDQ6NDYgMjAxOSAtMDcwMAoKICAgIGluY2x1ZGUvbGludXgv
Y3B1bWFzay5oOiBmaXggZG91YmxlIHN0cmluZyB0cmF2ZXJzZSBpbiBjcHVtYXNrX3BhcnNlCgog
ICAgY3B1bWFza19wYXJzZSgpIGZpbmRzIGZpcnN0IG9jY3VycmVuY2Ugb2YgZWl0aGVyIG9yIHN0
cmNocigpIGFuZAogICAgc3RybGVuKCkuICBXZSBjYW4gZG8gaXQgYmV0dGVyIHdpdGggYSBzaW5n
bGUgY2FsbCBvZiBzdHJjaHJudWwoKS4KCiAgICBbYWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZzog
cmVtb3ZlIHVubmVlZGVkIGNhc3RdCiAgICBMaW5rOiBodHRwOi8vbGttbC5rZXJuZWwub3JnL3Iv
MjAxOTA0MDkyMDQyMDguMTIxOTAtMS15bm9yb3ZAbWFydmVsbC5jb20KICAgIFNpZ25lZC1vZmYt
Ynk6IFl1cnkgTm9yb3YgPHlub3JvdkBtYXJ2ZWxsLmNvbT4KICAgIEFja2VkLWJ5OiBSYXNtdXMg
VmlsbGVtb2VzIDxsaW51eEByYXNtdXN2aWxsZW1vZXMuZGs+CiAgICBTaWduZWQtb2ZmLWJ5OiBB
bmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPgogICAgU2lnbmVkLW9mZi1i
eTogTGludXMgVG9ydmFsZHMgPHRvcnZhbGRzQGxpbnV4LWZvdW5kYXRpb24ub3JnPgoKOjA0MDAw
MCAwNDAwMDAgZjIwZDhhOWVjMTc1NWIzOTgxNTIwZWNmMDE1MjQ4ZjZhMGQ5ZjExNiBkYjY3Y2Fm
NjRmOTlhOWJlODA4Y2Q3M2U0MTNjMTA2YzVhZWUxNWI3IE0gICAgICBpbmNsdWRlCgpUaGlzIGNv
bW1pdCBpcyB2NS4yLXJjMX42Ml4yfjQ5LgpIb3cgZG8gd2UgZGVhbCB3aXRoIHRoaXMgb25lPwoK
U2ViYXN0aWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
