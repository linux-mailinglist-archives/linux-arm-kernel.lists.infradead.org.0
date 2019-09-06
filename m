Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7F5ABD25
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 18:00:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWyTkR5EJk/IFvZx2nw4M62FQJD5nGN9jtJFIS5Wazc=; b=jVbOZ83bN0THiS
	Yn05gp3MlFuNxfxkiaW5Sfe+FJYfWiSAr6MdqX9Vmxb5Bb2WZFGjKfZg12LEvB2TJxfgPnTQf+J7Z
	UIyUnoNF3RHt7f31uFv/Fwb+qMZw+QeTqHNMAMbPQdTxsM80H9IJh8E0lRPY97mEbXFUpaCKD/0x8
	eVvyohBR8Z0cdVG7KWmOhmKTIp1VaqUOlbb7RTqOPFSWyFsZkQUfRy/CH3IiVHBD5+9U1ToD79Jb4
	wYZw0/vV83kV1fnna3S0zchqN2FRPQo2AStxvvdU6qKgc26KbWMubIBO9qKqrzQ8oHueIgsLRysIw
	oIztEga7mIZrrd1OBEEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6GeW-00050o-VD; Fri, 06 Sep 2019 16:00:01 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6GeM-000500-1J
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 15:59:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C101CAF77;
 Fri,  6 Sep 2019 15:59:46 +0000 (UTC)
Subject: Re: [Xen-devel] [PATCH] ARM: xen: unexport HYPERVISOR_platform_op
 function
To: Andrew Cooper <andrew.cooper3@citrix.com>
References: <20190906153948.2160342-1-arnd@arndb.de>
 <7abad95e-ea47-c068-d91c-ba503f2530b9@citrix.com>
From: Jan Beulich <jbeulich@suse.com>
Message-ID: <742b216d-9219-7ba5-553b-6445513ccedd@suse.com>
Date: Fri, 6 Sep 2019 17:59:55 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7abad95e-ea47-c068-d91c-ba503f2530b9@citrix.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_085950_226242_A6689355 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stefano Stabellini <sstabellini@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Emil Velikov <emil.l.velikov@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Denis Efremov <efremov@linux.com>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 xen-devel@lists.xenproject.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDYuMDkuMjAxOSAxNzo1NSwgQW5kcmV3IENvb3BlciB3cm90ZToKPiBPbiAwNi8wOS8yMDE5
IDE2OjM5LCBBcm5kIEJlcmdtYW5uIHdyb3RlOgo+PiBIWVBFUlZJU09SX3BsYXRmb3JtX29wKCkg
aXMgYW4gaW5saW5lIGZ1bmN0aW9uIGFuZCBzaG91bGQgbm90Cj4+IGJlIGV4cG9ydGVkLiBTaW5j
ZSBjb21taXQgMTViZmMyMzQ4ZDU0ICgibW9kcG9zdDogY2hlY2sgZm9yCj4+IHN0YXRpYyBFWFBP
UlRfU1lNQk9MKiBmdW5jdGlvbnMiKSwgdGhpcyBjYXVzZXMgYSB3YXJuaW5nOgo+Pgo+PiBXQVJO
SU5HOiAiSFlQRVJWSVNPUl9wbGF0Zm9ybV9vcCIgW3ZtbGludXhdIGlzIGEgc3RhdGljIEVYUE9S
VF9TWU1CT0xfR1BMCj4+Cj4+IFJlbW92ZSB0aGUgZXh0cmFuZW91cyBleHBvcnQuCj4+Cj4+IEZp
eGVzOiAxNWJmYzIzNDhkNTQgKCJtb2Rwb3N0OiBjaGVjayBmb3Igc3RhdGljIEVYUE9SVF9TWU1C
T0wqIGZ1bmN0aW9ucyIpCj4+IFNpZ25lZC1vZmYtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJu
ZGIuZGU+Cj4gCj4gU29tZXRoaW5nIGlzIHdvbmt5LsKgIFRoYXQgc3ltYm9sIGlzICgvIHJlYWxs
eSBvdWdodCB0byBiZSkgaW4gdGhlCj4gaHlwZXJjYWxsIHBhZ2UgYW5kIG1vc3QgZGVmaW5pdGVs
eSBub3QgaW5saW5lLgoKSXQncyBIWVBFUlZJU09SX3BsYXRmb3JtX29wX3JhdyB0aGF0J3MgaW4g
dGhlIGh5cGVyY2FsbCBwYWdlIGFmYWljcy4KCkphbgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
