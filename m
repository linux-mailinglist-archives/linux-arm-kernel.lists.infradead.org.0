Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 194C414080A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 11:34:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oN3ty8tZEVHEQf6ea5Y8Y3nQJmi1HYKa76KWspufk/0=; b=AvFfqwHKezv5Vz
	WwKmwnbPgU09mGIcQ2UzH9QziRM/OSzikK74qJI0zubv80wqbfmL//GIyf5+5UkqQejfVRFIqWDl+
	YGGpw2a8LId/R+Br16utAuhi3aIe1IgXQ3ZwtbK2a0iPhnUryYvxMOIya+JW2GJoUAG6xMo/2ay89
	Wyypq0d6nLcQ1AIc8H2BlafIdJw6eHUNBqDcSjb9WyoPFX/TW8K0XFkUH1hT5OBjRjF3zzqpC9xcQ
	+3RG8EfiarJZ/HxT6Ty9x0X/x6jVXWGO+Qyd53O3aMWoo2Hy+uRrugz99OUC24Xz/HnIux2Ic5zXL
	PVXQcATKRxVf3gGBuhbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isOxR-0001SU-Uo; Fri, 17 Jan 2020 10:34:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isOxH-0001S3-C4
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 10:34:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 963AF2082F;
 Fri, 17 Jan 2020 10:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579257259;
 bh=xZyM7mrStKr940M2xKIoQUbfHYPcx+2yv0jsPhhPAk8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TbqV/lM3UZZfPIIvFosVMTWaDOyRvpXRkGD9FOMwvGbSlhZF8000eMa+ukq9+ZyTu
 Slp/wLUg/GXiGBlruyUrngseKIVTjVWPVFK1QTjRsMuvWM8g+1kmiSielVK4H3OIai
 uiDY0XfdMVj7fyLe/VY4bpxoQxNrago4wSDxoXQk=
Date: Fri, 17 Jan 2020 10:34:14 +0000
From: Will Deacon <will@kernel.org>
To: Veronika Kabatova <vkabatov@redhat.com>
Subject: Re: =?utf-8?B?4p2MIEZBSUw=?= =?utf-8?Q?=3A?= Test report for kernel
 5.5.0-rc6-b260f5e.cki?(arm-next)
Message-ID: <20200117103413.GA6144@willie-the-truck>
References: <cki.9F6EEFCFB1.I2MBV5DGSX@redhat.com>
 <1087562953.2535418.1579256657647.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1087562953.2535418.1579256657647.JavaMail.zimbra@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_023419_430120_065411A0 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jianwen Ji <jiji@redhat.com>, Hangbin Liu <haliu@redhat.com>,
 catalin marinas <catalin.marinas@arm.com>, Yi Chen <yiche@redhat.com>,
 CKI Project <cki-project@redhat.com>, Xiumei Mu <xmu@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKYW4gMTcsIDIwMjAgYXQgMDU6MjQ6MTdBTSAtMDUwMCwgVmVyb25pa2EgS2FiYXRv
dmEgd3JvdGU6Cj4gLS0tLS0gT3JpZ2luYWwgTWVzc2FnZSAtLS0tLQo+ID4gRnJvbTogIkNLSSBQ
cm9qZWN0IiA8Y2tpLXByb2plY3RAcmVkaGF0LmNvbT4KPiA+IFRvOiB3aWxsQGtlcm5lbC5vcmcs
ICJjYXRhbGluIG1hcmluYXMiIDxjYXRhbGluLm1hcmluYXNAYXJtLmNvbT4sIGxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gQ2M6ICJZaSBDaGVuIiA8eWljaGVAcmVkaGF0
LmNvbT4sICJKaWFud2VuIEppIiA8amlqaUByZWRoYXQuY29tPiwgIkhhbmdiaW4gTGl1IiA8aGFs
aXVAcmVkaGF0LmNvbT4sICJYaXVtZWkgTXUiCj4gPiA8eG11QHJlZGhhdC5jb20+Cj4gPiBTZW50
OiBGcmlkYXksIEphbnVhcnkgMTcsIDIwMjAgNDozNToyNyBBTQo+ID4gU3ViamVjdDog4p2MIEZB
SUw6IFRlc3QgcmVwb3J0IGZvciBrZXJuZWwgNS41LjAtcmM2LWIyNjBmNWUuY2tpCShhcm0tbmV4
dCkKPiA+IAo+ID4gV2UgcmFuIGF1dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQgZnJv
bSB0aGlzIGtlcm5lbCB0cmVlOgo+ID4gCj4gPiAgICAgICAgS2VybmVsIHJlcG86Cj4gPiAgICAg
ICAgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FybTY0L2xp
bnV4LmdpdAo+ID4gICAgICAgICAgICAgQ29tbWl0OiBiMjYwZjVlYjRlNTcgLSBNZXJnZSBicmFu
Y2ggJ2Zvci1uZXh0L2NvcmUnIGludG8KPiA+ICAgICAgICAgICAgIGZvci1rZXJuZWxjaQo+ID4g
Cj4gPiBUaGUgcmVzdWx0cyBvZiB0aGVzZSBhdXRvbWF0ZWQgdGVzdHMgYXJlIHByb3ZpZGVkIGJl
bG93Lgo+ID4gCj4gPiAgICAgT3ZlcmFsbCByZXN1bHQ6IEZBSUxFRCAoc2VlIGRldGFpbHMgYmVs
b3cpCj4gPiAgICAgICAgICAgICAgTWVyZ2U6IE9LCj4gPiAgICAgICAgICAgIENvbXBpbGU6IE9L
Cj4gPiAgICAgICAgICAgICAgVGVzdHM6IEZBSUxFRAo+ID4gCj4gPiBBbGwga2VybmVsIGJpbmFy
aWVzLCBjb25maWcgZmlsZXMsIGFuZCBsb2dzIGFyZSBhdmFpbGFibGUgZm9yIGRvd25sb2FkIGhl
cmU6Cj4gPiAKPiA+ICAgaHR0cHM6Ly9hcnRpZmFjdHMuY2tpLXByb2plY3Qub3JnL3BpcGVsaW5l
cy8zODcyMTkKPiA+IAo+ID4gT25lIG9yIG1vcmUga2VybmVsIHRlc3RzIGZhaWxlZDoKPiA+IAo+
ID4gICAgIGFhcmNoNjQ6Cj4gPiAgICAgIOKdjCBOZXR3b3JraW5nIFVEUDogc29ja2V0Cj4gPiAg
ICAgIOKdjCBOZXR3b3JraW5nIGlwc2VjOiBiYXNpYyBuZXRucyB0dW5uZWwKPiA+IAo+IAo+IGFm
dGVyIHllc3RlcmRheSdzIGRpc2N1c3Npb25zIEkgdGhvdWdodCBJJ2QgcG9pbnQgaXQgb3V0IHNw
ZWNpZmljYWxseS4KPiBUaGVzZSB0ZXN0cyBkaWQgcmVhbGx5IHJlcG9ydCBhIGZhaWx1cmUgYW5k
IHRoZSByZXN1bHRzIGFyZSBub3QgY2F1c2VkCj4gYnkgdGhlIGluZnJhIGlzc3VlIHdlIHdlcmUg
dGFsa2luZyBhYm91dC4gSSdtIHN1cmUgdGhlIHRlc3QgbWFpbnRhaW5lcnMKPiBjYW4gaGVscCB3
aXRoIGZpZ3VyaW5nIG91dCBpZiB0aGlzIGlzIHNvbWV0aGluZyB0byBiZSBjb25jZXJuZWQgd2l0
aC4KClRoYW5rcywgVmVyb25pa2EgLS0gSSB3YXMgYWJvdXQgdG8gbWFpbCB5b3UgdG8gYXNrISBX
ZSBxdWV1ZWQgc29tZSBJUApjaGVja3N1bSBjaGFuZ2VzIHllc3RlcmRheSwgc28gSSBiZXQgdGhl
eSdyZSB0aGUgY3VscHJpdCwgc2luY2UgdGhpcyBsb29rcwp0byBiZSByZWxhdGVkIHRvIFVEUCBj
aGVja3N1bW1pbmcuCgpXaWxsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
