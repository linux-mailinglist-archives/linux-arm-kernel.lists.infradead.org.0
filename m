Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E3E15564D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 12:03:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TLZMTvhKXvc2zGMC4w1yETe5Otvp225lEb5YGYkg1/w=; b=b1uGcd+RZN3c4F
	cdeYBdnfSa85wMNWfVvnGtMIC92Sr1eUJRoSzyBLlHFV8jonMdkmb2dHrBdXe4PUvjRZyfDomzTQv
	wojE4Dn/lioS2K/TydeL7jXQMSkqWzsDDeBiL/D8gQxjcs4vFMUi19au3cEhoLGyCnWMKpzIC1f1y
	UBrfDIUSwjWQTdeCrx0CNTLYOMTU4xhu7qgbyqkytlzJHsJYHzO16A2uK+C7Q7ubDo8tfY6Zmes8/
	3tM3I8FEeW29tjw9HuBbAaahlR9UEds5WxJ68xBUNAAF2GBsqisQx2lR4/rKjvMqxpQNvFLcp6QPS
	pobgnH8mgdOgByoUun/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j01QO-0004DJ-RZ; Fri, 07 Feb 2020 11:03:52 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j01QH-0004Ct-KC
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 11:03:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581073423;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TNlJpW3vAE5xzQwD1KkTA57bLeXUibHLesB2/sGPMLY=;
 b=M5LOVOOrDodExE6mzwoRhwJt380gxmifDNhweLltbl4PKFs2kRS+EY8bTPq7umy0SBcQRw
 W874dBWBacWPOCSPyrUskhmWl9LA/Xr/O7tnCMUO9i91hQe4SNF0DZllQIbP//Gnu0y4nN
 VVuIDm0ZWxy+7/uUTG7N+7sT/IheHYE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-178-zTomoKWCPR2rnfK2JHCMNQ-1; Fri, 07 Feb 2020 06:03:41 -0500
X-MC-Unique: zTomoKWCPR2rnfK2JHCMNQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 462791800D42;
 Fri,  7 Feb 2020 11:03:40 +0000 (UTC)
Received: from lacos-laptop-7.usersys.redhat.com (ovpn-117-138.ams2.redhat.com
 [10.36.117.138])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1BF9B89F04;
 Fri,  7 Feb 2020 11:03:37 +0000 (UTC)
Subject: Re: [PATCH 1/2] efi/libstub: add support for loading the initrd from
 a device path
To: Heinrich Schuchardt <xypron.glpk@gmx.de>, Ard Biesheuvel
 <ardb@kernel.org>, linux-efi@vger.kernel.org
References: <20200206140352.6300-1-ardb@kernel.org>
 <20200206140352.6300-2-ardb@kernel.org>
 <a6d7fefb-2f02-86a3-66aa-c3c129a91fb1@gmx.de>
From: Laszlo Ersek <lersek@redhat.com>
Message-ID: <5972fdf8-6b35-483b-5c0c-01a53665e885@redhat.com>
Date: Fri, 7 Feb 2020 12:03:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <a6d7fefb-2f02-86a3-66aa-c3c129a91fb1@gmx.de>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_030345_740224_8AF49DFD 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: agraf@csgraf.de, daniel.kiper@oracle.com, ilias.apalodimas@linaro.org,
 mjg59@google.com, pjones@redhat.com, leif@nuviainc.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDIvMDYvMjAgMTk6MjYsIEhlaW5yaWNoIFNjaHVjaGFyZHQgd3JvdGU6Cj4gT24gMi82LzIw
IDM6MDMgUE0sIEFyZCBCaWVzaGV1dmVsIHdyb3RlOgoKPj4gK8KgwqDCoCBzdGF0dXMgPSBlZmlf
YnNfY2FsbChoYW5kbGVfcHJvdG9jb2wsIGhhbmRsZSwgJmxmMl9wcm90b19ndWlkLAo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKHZvaWQgKiopJmxmMik7Cj4+ICvCoMKgwqAg
aWYgKHN0YXR1cyAhPSBFRklfU1VDQ0VTUykKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBzdGF0
dXM7Cj4gCj4gWW91IHJlcXVpcmUgaGVyZSB0aGF0IHRoZXJlIGlzIGEgaGFuZGxlIGV4cG9zaW5n
IHRoZSBkZXZpY2UgcGF0aAo+IHByb3RvY29sIHdpdGggdGhlIGluaXRyZCBzcGVjaWZpYyBkZXZp
Y2UgcGF0aC4gT24gdGhlIHNhbWUgaGFuZGxlIHRoZQo+IEVGSV9MT0FEX0ZJTEUyX1BST1RPQ09M
IG11c3QgYmUgaW5zdGFsbGVkIHdoaWNoIHdpbGwgbG9hZCB0aGUgaW5pdHJkCj4gZmlsZSB3aGVu
IGNhbGxlZCB3aXRoIHRoZSBzYW1lIGRldmljZSBwYXRoLgo+IAo+IEFuIGFsdGVybmF0aXZlIGlt
cGxlbWVudGF0aW9uIHdvdWxkIHNpbXBsZSBsb29wIG92ZXIgYWxsIGluc3RhbmNlcyBvZgo+IHRo
ZSBFRklfTE9BRF9GSUxFMl9QUk9UT0NPTCBhbmQgdHJ5IHRvIGxvYWQgdGhlIGluaXRyZC4KClRo
YXQncyBub3QgYSBncmVhdCBpZGVhIElNTy4gRUZJX0xPQURfRklMRTJfUFJPVE9DT0wgaW5zdGFu
Y2VzIHRha2UKZGV2aWNlLXNwZWNpZmljIGZpbGVuYW1lcyAvIHBhdGhuYW1lcyB0byBsb2FkLiBJ
ZiB5b3UgcGFzcyBhbnkKcGFydGljdWxhciBwYXRobmFtZSAoZS5nLiAiaW5pdHJkIiBvciAiXFxp
bml0cmQiKSB0byByYW5kb20KRUZJX0xPQURfRklMRTJfUFJPVE9DT0wgaW5zdGFuY2UgaW4gdGhl
IHByb3RvY29sIGRhdGFiYXNlLCB0aGVyZSBjb3VsZApiZSB1bmRlc2lyZWQgcmVzdWx0cyAvIHNp
ZGUgZWZmZWN0cy4gKEl0IGNvdWxkIGNhdXNlIG5ldHdvcmsgYWN0aXZpdHksCmZvciBleGFtcGxl
LikKClN0aWNraW5nIHdpdGggYSBWZW5NZWRpYSAoaS5lLiBHVUlELWVkKSBkZXZwYXRoIGlzIG11
Y2ggc2FmZXI7IGl0CnByYWN0aWNhbGx5IGxldHMgdXMgZGVmaW5lIG91ciBvd24gZGV2aWNlLXNw
ZWNpZmljIGZpbGVuYW1lIC8gcGF0aG5hbWUKc3BhY2UuIChBbmQgaW4gbXkgb3RoZXIgZW1haWws
IEkgc3VnZ2VzdGVkICJ1c2UgYW4gZW1wdHkgZGV2cGF0aCIgZm9yCmRldmljZS1zcGVjaWZpYyBw
YXRobmFtZSwgYmVjYXVzZSB0aGF0J3MgdGhlIHNpbXBsZXN0LCBpdCBsb29rcwpzcGVjLWNvbmZv
cm1hdCwgYW5kIGl0J3Mgc2FmZSwgYmVjYXVzZSBvdXIgR1VJRCBtYWtlcyB0aGUgbG9hZCBhdHRl
bXB0CnVuaXF1ZSBhbHJlYWR5LikKCkkgZG8gYWdyZWUgd2l0aCB5b3VyIHF1ZXN0aW9uIHRob3Vn
aDogIlBsZWFzZSwgaW5kaWNhdGUgd2hpY2ggc29mdHdhcmUKeW91IGV4cGVjdCB0byBleHBvc2Ug
dGhlIGluaXRyZCByZWxhdGVkIEVGSV9MT0FEX0ZJTEUyX1BST1RPQ09MLiIKClRoYW5rcwpMYXN6
bG8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
