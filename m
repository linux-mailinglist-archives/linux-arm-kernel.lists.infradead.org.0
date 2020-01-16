Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E9513F508
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:53:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1cpU5bYNjm8iRIBUQO2KZ01bL44If+xhw0YQ/JMJVao=; b=LcufFYDWjOCeu8
	Y+ndwEtxBj9tlAixuzaix6V8Bsac1VxYOULHmqRNxxHxV0n26b7Kcv7FchfcvwUJ4dx42o4/zF8xO
	DGJdiRenF4xmfTcjCVwkxcq/VwueBtMwAuPcT7msJx0tC6P9cqjAqh+iPCdpbQ8vzhScQd8CpEq2E
	AXqF80ykB+C5jSnHDNckCebldWw/+bwMbRvknoTRvJqIrX3Nxljm+a53MtkQP9PHAE8zUwotfWXP+
	RcQAsgbi/NZPH3vyvXCfzbbuFJDKXrUduvbg17d/kMW4zVaBHTgx5M8h3+9IuFN8SQvXfx2dgS6rQ
	zKmCRRjkEYzxdiznIweA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isAH0-000264-4n; Thu, 16 Jan 2020 18:53:42 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isACF-0004mn-TX
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:48:52 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id A652081A1;
 Thu, 16 Jan 2020 18:49:29 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 4/4] 
Date: Thu, 16 Jan 2020 10:48:13 -0800
Message-Id: <pull-1579200367-372444@atomide.com-4>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <pull-1579200367-372444@atomide.com>
References: <pull-1579200367-372444@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_104848_045052_99CB5003 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogIlRvbnkgTGluZGdyZW4iIDx0b255QGF0b21pZGUuY29tPgoKVGhlIGZvbGxvd2luZyBj
aGFuZ2VzIHNpbmNlIGNvbW1pdCBiZmUwMjM3ZGQ2YzQ0MWYwYmE1MzE3NTVhYjI0NTc5ZWFlZTk5
YmU3OgoKICBBUk06IGR0czogYW0zMzV4LWljZXYyOiBBZGQgc3VwcG9ydCBmb3IgT1NEOTYxNlAw
ODk5LTEwIGF0IGkyYzAgKDIwMTktMTItMTIgMDk6MzU6MDIgLTA4MDApCgphcmUgYXZhaWxhYmxl
IGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoKCiAgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L3RtbGluZC9saW51eC1vbWFwIHRhZ3Mvb21hcC1mb3ItdjUuNi9k
dC1wYXJ0Mi1zaWduZWQKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byA2YmNjMzE5ZmM2
MTkyY2IwM2YzZGI0MWYwZTI2NmI3OTZiMGU0MjRmOgoKICBBUk06IGR0czogQWRkIG9tYXAzLWVj
aG8gKDIwMjAtMDEtMTMgMTA6MTE6NDAgLTA4MDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCk1vcmUgZHRzIGNoYW5nZXMg
Zm9yIG9tYXBzIGZvciB2NS42IG1lcmdlIHdpbmRvdwoKQWRkIGJhc2ljIHN1cHBvcnQgZm9yIGZp
cnN0IGdlbmVyYXRpb24gQW1hem9uIG9tYXAzLWVjaG8uIFRoaXMgZ290CmFwcGxpZWQgcmF0aGVy
IGxhdGUgYXMgd2UgZGlzY3Vzc2VkIGhvdyB0byBkZWFsIHdpdGggU29DIHZhcmlhbnRzCndpdGgg
c29tZSBhY2NlbGVyYXRvcnMgdW5hY2Nlc3NpYmxlLCBhbmQgZXZlbnR1YWxseSBlbmRlZCB1cCBz
ZXR0aW5nCnVwIGZldyBtb3JlIFNvQyBzcGVjaWZpYyBkdHNpIGZpbGVzLiBFdmVudHVhbGx5IHdl
J2xsIG5lZWQgdG8gYWxzbwpkZXRlY3QgdGhlIGRpc2FibGVkIGFjY2VsZXJhdG9ycyBvbiBkcml2
ZXIgaW5pdCwgYnV0IG1vcmUgcGF0Y2hpbmcKaXMgbmVlZGVkIGZvciB0aGF0LgoKLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpB
bmRyw6kgSGVudHNjaGVsICgyKToKICAgICAgQVJNOiBkdHM6IEFkZCBkdHNpIGZpbGVzIGZvciBB
TTM3MDMsIEFNMzcxNSBhbmQgRE0zNzI1CiAgICAgIEFSTTogZHRzOiBBZGQgb21hcDMtZWNobwoK
IGFyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlICAgICAgIHwgICAxICsKIGFyY2gvYXJtL2Jvb3Qv
ZHRzL2FtMzcwMy5kdHNpICAgIHwgIDE0ICsrCiBhcmNoL2FybS9ib290L2R0cy9hbTM3MTUuZHRz
aSAgICB8ICAxMCArCiBhcmNoL2FybS9ib290L2R0cy9kbTM3MjUuZHRzaSAgICB8ICAxMCArCiBh
cmNoL2FybS9ib290L2R0cy9vbWFwMy1lY2hvLmR0cyB8IDQ2MSArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKIDUgZmlsZXMgY2hhbmdlZCwgNDk2IGluc2VydGlvbnMoKykK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9hbTM3MDMuZHRzaQogY3JlYXRl
IG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3QvZHRzL2FtMzcxNS5kdHNpCiBjcmVhdGUgbW9kZSAx
MDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMvZG0zNzI1LmR0c2kKIGNyZWF0ZSBtb2RlIDEwMDY0NCBh
cmNoL2FybS9ib290L2R0cy9vbWFwMy1lY2hvLmR0cwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
