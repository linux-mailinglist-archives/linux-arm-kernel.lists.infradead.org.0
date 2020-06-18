Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 195F81FEC61
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 09:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4xshNJxuUO8kFaqx/lsdpSMVmsJBWFrw3BXdBRSn+Qo=; b=GA9HulEQETZozT
	gv9RSrebHUjPjJVaNAlolOPqq7vJKmmaJwArEYN+ZFjSP+BNluoE8h323s7BGFyNuJl4zB8d69HAY
	tsz/KJQUcBqZH7H3y6EiQs45pZflhshHnxNpwCRJsQPB23ab1HGWOnJrbPyPsg0GudpJaKiRpDs8i
	Cm+uDZYSkXoaVueb4TCBzeaH2DHE4JvMB6hCp4SEC99JU2hyfFe69KMHuB4IgX2/O8OmCpihyn25W
	Z7OGRRYVwZUjaNCVKy+e2r1bit0K0+Bu0yABG6PTvgwcoy4WWmJ3Zsp/yCWXA5v/D7p3cIct4ep3C
	Nlv6ZXCjr3uAgK5rpzgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jloss-0002Rr-A6; Thu, 18 Jun 2020 07:22:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlosi-0002RT-UJ
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 07:22:42 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8764212CC;
 Thu, 18 Jun 2020 07:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592464960;
 bh=W3LB2w+Bk9QiapN/KrwPRb4WkEKU5VOUAx15Ea4mnyI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NoJFYhGOLgdbw/3SEX7CTv+kwOkJYcyB3JucaL6LvniFBCxADztAh/4YWVeFSRcqO
 TAUgr9+S0yoBIfeufi9OjP5t6yXVfApuku5tUuWlahX1oZRm7Fb3m41oxJNyKKlOif
 hrbGbjKmplvBhjCf3Xi5yGGPGWupnzr1D1zBhsKI=
Date: Thu, 18 Jun 2020 08:22:36 +0100
From: Will Deacon <will@kernel.org>
To: Jan Stancek <jstancek@redhat.com>
Subject: Re: =?utf-8?B?4p2MIEZBSUw=?= =?utf-8?Q?=3A?= Test report for kernel
 5.8.0-rc1-b9249cb.cki (arm-next)
Message-ID: <20200618072236.GB4864@willie-the-truck>
References: <cki.72F10DD5A2.1F8H07UJY5@redhat.com>
 <163954071.16503342.1592460475593.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <163954071.16503342.1592460475593.JavaMail.zimbra@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_002240_995834_CFEA4D16 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: catalin marinas <catalin.marinas@arm.com>,
 Memory Management <mm-qe@redhat.com>, linux-arm-kernel@lists.infradead.org,
 CKI Project <cki-project@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gMTgsIDIwMjAgYXQgMDI6MDc6NTVBTSAtMDQwMCwgSmFuIFN0YW5jZWsgd3Jv
dGU6Cj4gCj4gLS0tLS0gT3JpZ2luYWwgTWVzc2FnZSAtLS0tLQo+ID4gCj4gPiBIZWxsbywKPiA+
IAo+ID4gV2UgcmFuIGF1dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQgZnJvbSB0aGlz
IGtlcm5lbCB0cmVlOgo+ID4gCj4gPiAgICAgICAgS2VybmVsIHJlcG86Cj4gPiAgICAgICAgaHR0
cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJtNjQvbGludXgu
Z2l0Cj4gPiAgICAgICAgICAgICBDb21taXQ6IGI5MjQ5Y2JhMjVhNSAtIGFybTY0OiBidGk6IFJl
cXVpcmUgY2xhbmcgPj0gMTAuMC4xIGZvcgo+ID4gICAgICAgICAgICAgaW4ta2VybmVsIEJUSSBz
dXBwb3J0Cj4gPiAKPiA+IFRoZSByZXN1bHRzIG9mIHRoZXNlIGF1dG9tYXRlZCB0ZXN0cyBhcmUg
cHJvdmlkZWQgYmVsb3cuCj4gPiAKPiA+ICAgICBPdmVyYWxsIHJlc3VsdDogRkFJTEVEIChzZWUg
ZGV0YWlscyBiZWxvdykKPiA+ICAgICAgICAgICAgICBNZXJnZTogT0sKPiA+ICAgICAgICAgICAg
Q29tcGlsZTogT0sKPiA+ICAgICAgICAgICAgICBUZXN0czogRkFJTEVECj4gPiAKPiA+IEFsbCBr
ZXJuZWwgYmluYXJpZXMsIGNvbmZpZyBmaWxlcywgYW5kIGxvZ3MgYXJlIGF2YWlsYWJsZSBmb3Ig
ZG93bmxvYWQgaGVyZToKPiA+IAo+ID4gICBodHRwczovL2NraS1hcnRpZmFjdHMuczMudXMtZWFz
dC0yLmFtYXpvbmF3cy5jb20vaW5kZXguaHRtbD9wcmVmaXg9ZGF0YXdhcmVob3VzZS8yMDIwLzA2
LzE3LzYwMjE4NAo+ID4gCj4gPiBPbmUgb3IgbW9yZSBrZXJuZWwgdGVzdHMgZmFpbGVkOgo+ID4g
Cj4gPiAgICAgYWFyY2g2NDoKPiA+ICAgICAg4p2MIExUUAo+IAo+IG1rbm9kMDcgLSB1cGRhdGVk
Cj4gICBodHRwczovL2dpdGh1Yi5jb20vbGludXgtdGVzdC1wcm9qZWN0L2x0cC9jb21taXQvMTNm
Y2ZhMmQ2YmRkMWZiNzFjNDUyOGI0NzE3MGU4ZThmYjNhOGEzMgo+IAo+IHNldG5zMDEgLSBDaHJp
c3RpYW4gcG9zdGVkIGEgcGF0Y2gKPiAgIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAy
MDA2MTYyMjU2MTIuNDA2ODc5OS0xLWNocmlzdGlhbi5icmF1bmVyQHVidW50dS5jb20vCgpUaGFu
a3MsIEphbi4gTG9va3MgbGlrZSB3ZSdyZSBnb29kIGZvciB0aGlzIGJyYW5jaCwgdGhlbi4KCldp
bGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
