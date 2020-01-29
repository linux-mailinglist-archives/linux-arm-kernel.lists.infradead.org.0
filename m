Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D7414D436
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 00:59:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AxMA42rev+n82PYozBpiiLpDE2Yp9LKD2m/9J6EX9U8=; b=tAd7+/UETNNhII
	IzRPZODFU2Q2zw/+kB/gxqQWOaQ6UkkQreKtPek8T23zta4gN+sjw7JFSO1vbPbla6snZ1A8pyVqi
	+owHrC82wPDC3A9o2wUGnnqQ8FyvNYCJOW320dSxJ7t81IlssQqpGM6WpkpSaQyD02NajxrKmPUaP
	XrNd2Pktm8svCNDtA+vhFKi3DrPkIs/uj34ORwicSaQ3Pa59g6UTiQ5II9misDJd7MdSze2HZ+q68
	J6CZyzTuVzeo0y8Oo0ibZCQMtk9YLf9/HZsuBhXoRiDd3VLDIDQvJXzuTzmn6HSKtwoJ/Qt8N+CG2
	tofjAmWiHuOiDOGLKukg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwxEs-0006CI-4o; Wed, 29 Jan 2020 23:59:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwxEk-0006BI-HQ
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 23:59:11 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 60269205ED;
 Wed, 29 Jan 2020 23:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580342348;
 bh=yxkaudjRnjvvfdKWPnNCLoYBv3LloMsyXzwr45ZzU78=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=cLuVWANomNH0rT6PVVW/FB09C+GLkJj5uCGw3ovSGcUEOHRFFVDPAPxxYR0gh0Nv+
 rNcyGRrkz2MGQ9q+Z7eXg5x1wJHt/u0eFEWGdiV25ZvsrWayVp2v21BRkWLQiy3930
 etAwh0LVr43xhSG865jgg0JD+Vm2JPvztCMi0lZU=
Date: Wed, 29 Jan 2020 15:59:07 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH 3/5] mm/mremap: use pmd_addr_end to calculate next in
 move_page_tables()
Message-Id: <20200129155907.75868e8a36c5fffc3ec354b9@linux-foundation.org>
In-Reply-To: <b5eb4766-38ba-0153-2844-cc303fe0dc07@gmail.com>
References: <20200117232254.2792-1-richardw.yang@linux.intel.com>
 <20200117232254.2792-4-richardw.yang@linux.intel.com>
 <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
 <20200126185951.c9246349befcccce210a4ab8@linux-foundation.org>
 <b5eb4766-38ba-0153-2844-cc303fe0dc07@gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_155910_598654_8DAF90BD 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, thellstrom@vmware.com,
 yang.shi@linux.alibaba.com, Russell King - ARM Linux <linux@armlinux.org.uk>,
 aneesh.kumar@linux.ibm.com, linux-kernel@vger.kernel.org,
 Jon Hunter <jonathanh@nvidia.com>, linux-mm@kvack.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Wei Yang <richardw.yang@linux.intel.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 kirill@shutemov.name, dan.j.williams@intel.com,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyOSBKYW4gMjAyMCAyMDoxODo1NiArMDMwMCBEbWl0cnkgT3NpcGVua28gPGRpZ2V0
eEBnbWFpbC5jb20+IHdyb3RlOgoKPiAyNy4wMS4yMDIwIDA1OjU5LCBBbmRyZXcgTW9ydG9uINC/
0LjRiNC10YI6Cj4gPiBPbiBTdW4sIDI2IEphbiAyMDIwIDE3OjQ3OjU3ICswMzAwIERtaXRyeSBP
c2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNvbT4gd3JvdGU6Cj4gLi4uCj4gPj4gSGVsbG8gV2VpLAo+
ID4+Cj4gPj4gU3RhcnRpbmcgd2l0aCBuZXh0LTIwMjAwMTIyLCBJJ20gc2VlaW5nIHRoZSBmb2xs
b3dpbmcgaW4gS01TRyBvbiBOVklESUEKPiA+PiBUZWdyYSAoQVJNMzIpOgo+ID4+Cj4gPj4gICBC
VUc6IEJhZCByc3MtY291bnRlciBzdGF0ZSBtbToocHRydmFsKSB0eXBlOk1NX0FOT05QQUdFUyB2
YWw6MTkwCj4gPj4KPiA+PiBhbmQgZXZlbnR1YWxseSBrZXJuZWwgaGFuZ3MuCj4gPj4KPiA+PiBH
aXQncyBiaXNlY3Rpb24gcG9pbnRzIHRvIHRoaXMgcGF0Y2ggYW5kIHJldmVydGluZyBpdCBoZWxw
cy4gUGxlYXNlIGZpeCwKPiA+PiB0aGFua3MgaW4gYWR2YW5jZS4KPiA+IAo+ID4gVGhhbmtzLiAg
SSBoYWQgdGhlc2UgdGFnZ2VkIGZvciA1LjctcmMxIGFueXdheSwgc28gSSdsbCBkcm9wIGFsbCBm
aXZlCj4gPiBwYXRjaGVzLgo+ID4gCj4gCj4gSGVsbG8gQW5kcmV3LAo+IAo+IEZZSSwgSSdtIHN0
aWxsIHNlZWluZyB0aGUgb2ZmZW5kaW5nIHBhdGNoZXMgaW4gdGhlIHRvZGF5J3MgbmV4dC0yMDIw
MDEyOS4KCmhtLCBtZSB0b28uICBTdGVwaGVuLCBpdCdzIHVuZXhwZWN0ZWQgdGhhdCA5ZmY0NDUy
OTEyZDYzZiAoIm1tL21yZW1hcDoKdXNlIHBtZF9hZGRyX2VuZCB0byBjYWxjdWxhdGUgbmV4dCBp
biBtb3ZlX3BhZ2VfdGFibGVzKCkiKSBpcyBzdGlsbCBpbgp0aGUgLW5leHQgbGluZXVwPyAgSXQg
d2FzIGRyb3BwZWQgZnJvbSAtbW0gb24gSmFuIDI2PwoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
