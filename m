Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E93551D06F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 08:12:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=93bPt/B8cHm86y6jriJpe+3YM/L7pYPxXHIaOcIZi7s=; b=OxyXwVn3iYTw6W
	UI9pnzcqqGgF2GZcQmkDVoNua+pdG9jvbxNrfbQAn/tw3ViKQT6LXho4wMDMUZCLAZhIA4cg31mus
	dlYcyIp7LAf/rD2bzQnecgrRwtrmGmnzIG9sbiYThWl9Rpr+oxL8gpJ3WyWUFco0MB+btpKOfgPg/
	sxRScNY9ZZmIcCjRNwScD65T5yh7qRTFTzBVx+Tbi0ywHyBSCnvEy7X59EHcCGrHAcisALp1lMmI0
	mIVUlvjPSxg3ORIYQnomx+IiAWLNDKSQEwcLD269A+PL+WNeZpbTHynxen39e/OTGmqPkipd6vCAK
	ex4FtE/w2Xm7Uk0IeQFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYkdH-0002tw-QJ; Wed, 13 May 2020 06:12:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYkd6-0002tZ-Nk
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 06:12:34 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 50D9A206D3;
 Wed, 13 May 2020 06:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589350352;
 bh=yZgCr/PWJD2jL+aRF03f2a2dej0Q4HSchjgQuclIFfM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fSxNq5ojHQpG7OMXN6lOFd1+ceCmsdTLylwzPrFrEUCrGN1l5L24FplHA1Z/IQXVV
 W/v0PPGfB4F7SohU4mR1Br+mykEpNbTjjDMsyE5yhbb/ihFX8TBffDV5navITm1aIy
 G5IaCVETl4hnlTvzWnm6Bbdfg3991BO9gdr3754I=
Date: Wed, 13 May 2020 07:12:27 +0100
From: Will Deacon <will@kernel.org>
To: CKI Project <cki-project@redhat.com>
Subject: Re: =?utf-8?B?4p2MIEZBSUw=?= =?utf-8?Q?=3A?= Test report for kernel
 5.7.0-rc5-51f14e2.cki (arm-next)
Message-ID: <20200513060321.GA17433@willie-the-truck>
References: <cki.495C39BD1A.T35Z6VDJPY@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cki.495C39BD1A.T35Z6VDJPY@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_231232_797158_955F4879 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: catalin.marinas@arm.com, Memory Management <mm-qe@redhat.com>,
 Jan Stancek <jstancek@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ0tJIGZvbGtzLAoKT24gV2VkLCBNYXkgMTMsIDIwMjAgYXQgMDM6MDE6MzZBTSAtMDAwMCwg
Q0tJIFByb2plY3Qgd3JvdGU6Cj4gV2UgcmFuIGF1dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBj
b21taXQgZnJvbSB0aGlzIGtlcm5lbCB0cmVlOgo+IAo+ICAgICAgICBLZXJuZWwgcmVwbzogaHR0
cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJtNjQvbGludXgu
Z2l0Cj4gICAgICAgICAgICAgQ29tbWl0OiA1MWYxNGUyYzAyZTggLSBNZXJnZSBicmFuY2ggJ2Zv
ci1uZXh0L2NvcmUnIGludG8gZm9yLWtlcm5lbGNpCj4gCj4gVGhlIHJlc3VsdHMgb2YgdGhlc2Ug
YXV0b21hdGVkIHRlc3RzIGFyZSBwcm92aWRlZCBiZWxvdy4KPiAKPiAgICAgT3ZlcmFsbCByZXN1
bHQ6IEZBSUxFRCAoc2VlIGRldGFpbHMgYmVsb3cpCj4gICAgICAgICAgICAgIE1lcmdlOiBPSwo+
ICAgICAgICAgICAgQ29tcGlsZTogT0sKPiAgICAgICAgICAgICAgVGVzdHM6IEZBSUxFRAo+IAo+
IEFsbCBrZXJuZWwgYmluYXJpZXMsIGNvbmZpZyBmaWxlcywgYW5kIGxvZ3MgYXJlIGF2YWlsYWJs
ZSBmb3IgZG93bmxvYWQgaGVyZToKPiAKPiAgIGh0dHBzOi8vY2tpLWFydGlmYWN0cy5zMy51cy1l
YXN0LTIuYW1hem9uYXdzLmNvbS9pbmRleC5odG1sP3ByZWZpeD1kYXRhd2FyZWhvdXNlLzIwMjAv
MDUvMTIvNTY0OTEwCj4gCj4gT25lIG9yIG1vcmUga2VybmVsIHRlc3RzIGZhaWxlZDoKPiAKPiAg
ICAgYWFyY2g2NDoKPiAgICAgIOKdjCBMVFAKClsuLi5dCgo+ICAgICBIb3N0IDI6Cj4gICAgICAg
IOKchSBCb290IHRlc3QKPiAgICAgICAg4pyFIFBvZG1hbiBzeXN0ZW0gaW50ZWdyYXRpb24gdGVz
dCAtIGFzIHJvb3QKPiAgICAgICAg4pyFIFBvZG1hbiBzeXN0ZW0gaW50ZWdyYXRpb24gdGVzdCAt
IGFzIHVzZXIKPiAgICAgICAg4p2MIExUUAoKSSdtIHN0cnVnZ2xpbmcgYSBiaXQgd2l0aCB0aGlz
IG9uZSwgcGxlYXNlIGNhbiB5b3UgY29uZmlybSB0aGF0IGl0J3Mgbm90CmFuIGlzc3VlIG9uIHlv
dXIgZW5kPyBUaGUgZmFpbHVyZXMgYXJlIHJlbGF0ZWQgdG8gL2Rldi9jcHVzZXQ6CgogIG1lbS5j
Ojc2MDogQlJPSzogbW91bnQgL2Rldi9jcHVzZXQ6IEVCVVNZICgxNikKICAuLi4KICBzYWZlX21h
Y3Jvcy5jOjE3MjogQlJPSzogbWVtLmM6NzUwOiBta2RpcigvZGV2L2NwdXNldCwwNzc3KSBmYWls
ZWQ6IEVFWElTVCAoMTcpCgogIGh0dHBzOi8vY2tpLWFydGlmYWN0cy5zMy51cy1lYXN0LTIuYW1h
em9uYXdzLmNvbS9kYXRhd2FyZWhvdXNlLzIwMjAvMDUvMTIvNTY0OTEwL0xUUC9hYXJjaDY0XzJf
bHRwX21tLmZhaWwubG9nCgpCdXQgd2UgaGF2ZW4ndCBiZWVuIGFueXdoZXJlIG5lYXIgdGhhdCBp
biB0aGUgYXJtNjQgdHJlZSBhZmFpay4KCkNoZWVycywKCldpbGwKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
