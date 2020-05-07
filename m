Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F19B31C878A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:06:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TqoJ18ymvQUAIISeqIslVWG+Nvsl1cqrLtGZejUCIPs=; b=KArLOlfwhWRRn3b+dPvPB+jcM
	q1YKqa4iWpI+pOlb+9it33/8dKkUjF2IR3kysadcd7jsnSDIXKeKv2NPz1PMOoK33/lxMc9MMCLBr
	ifuOGja4qL8GZz4JpF2L+gW5yzCiNF3aVwsOwCHdG0EB8Ez2pEH6Ozx3U1/ndpnrUPpoU9P43uopk
	L7+p9m89qKCB1jXjZhkAsL8uMySYhQ138FnWOngbL9MwMgM95d/SjXEIeO8J5kAPh1+jdIqFfAXJh
	kmiiCyH1oP4c1kKF6BupwY8kAMgozHopTJBqE/Ax4VUlIDLlISEldrOM8GnVDnUtBFq0ig8BTnyxr
	KCDAv+vCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeLw-0002ip-Q0; Thu, 07 May 2020 11:06:08 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeLo-0002i3-0o
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:06:03 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588849561; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=KUkv11UrsJT4bCOAv4o9yBeyPANsHJVXo3wLqp+3x3w=;
 b=g9AICMawEuqcGsgthHgsCgMjPBgs0qhOastTexu2wfC1IcCFix4yms6IiSsfLmEGbIHyndCJ
 8n7dUiiT49vTOhwPZ9x1BS8nzKitSbZxiByIQJDE+GZ7en8xMijrP1KETNfgIxgucxwcADdp
 MPXHkeOxPMQZhqC3TJSOovogQYs=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb3eb89.7f618de0f0a0-smtp-out-n04;
 Thu, 07 May 2020 11:05:45 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 21CADC43637; Thu,  7 May 2020 11:05:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5D6E4C433F2;
 Thu,  7 May 2020 11:05:44 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 07 May 2020 16:35:44 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCHv2] iommu/arm-smmu: Make remove callback message more
 informative
In-Reply-To: <2f3cd963-dffe-290b-02bf-819687713738@arm.com>
References: <20200423095531.9868-1-saiprakash.ranjan@codeaurora.org>
 <CAD=FV=W=d=KrTwgMOO-ukFc7ZhkE92qGYumUEDrtjmhQOpdWbg@mail.gmail.com>
 <CAD=FV=U0Hhae3D1-P8kbcZafHeuqng11BNAbOb2YWPx+M7X5Gw@mail.gmail.com>
 <0b5098c28360d018f390a97155b9776c@codeaurora.org>
 <2f3cd963-dffe-290b-02bf-819687713738@arm.com>
Message-ID: <7c3fd8c1d5b26ac277b8729d59531474@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_040601_363462_B49EB983 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Doug Anderson <dianders@chromium.org>,
 LKML <linux-kernel@vger.kernel.org>, iommu@lists.linux-foundation.org,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNS0wNyAxNjowMywgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIwMjAtMDUtMDcg
MTE6MDQgYW0sIFNhaSBQcmFrYXNoIFJhbmphbiB3cm90ZToKPj4gSGksCj4+IAo+PiBPbiAyMDIw
LTA1LTA3IDA1OjQwLCBEb3VnIEFuZGVyc29uIHdyb3RlOgo+Pj4gSGksCj4+PiAKPj4+IE9uIFRo
dSwgQXByIDIzLCAyMDIwIGF0IDc6MzUgQU0gRG91ZyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21p
dW0ub3JnPiAKPj4+IHdyb3RlOgo+Pj4+IAo+Pj4+IEhpLAo+Pj4+IAo+Pj4+IE9uIFRodSwgQXBy
IDIzLCAyMDIwIGF0IDI6NTUgQU0gU2FpIFByYWthc2ggUmFuamFuCj4+Pj4gPHNhaXByYWthc2gu
cmFuamFuQGNvZGVhdXJvcmEub3JnPiB3cm90ZToKPj4+PiA+Cj4+Pj4gPiBDdXJyZW50bHkgb24g
cmVib290L3NodXRkb3duLCB0aGUgZm9sbG93aW5nIG1lc3NhZ2VzIGFyZQo+Pj4+ID4gZGlzcGxh
eWVkIG9uIHRoZSBjb25zb2xlIGFzIGVycm9yIG1lc3NhZ2VzIGJlZm9yZSB0aGUKPj4+PiA+IHN5
c3RlbSByZWJvb3RzL3NodXRkb3duIGFzIHBhcnQgb2YgcmVtb3ZlIGNhbGxiYWNrLgo+Pj4+ID4K
Pj4+PiA+IE9uIFNDNzE4MDoKPj4+PiA+Cj4+Pj4gPsKgwqAgYXJtLXNtbXUgMTUwMDAwMDAuaW9t
bXU6IHJlbW92aW5nIGRldmljZSB3aXRoIGFjdGl2ZSBkb21haW5zIQo+Pj4+ID7CoMKgIGFybS1z
bW11IDUwNDAwMDAuaW9tbXU6IHJlbW92aW5nIGRldmljZSB3aXRoIGFjdGl2ZSBkb21haW5zIQo+
Pj4+ID4KPj4+PiA+IE1ha2UgdGhpcyBlcnJvciBtZXNzYWdlIG1vcmUgaW5mb3JtYXRpdmUgYW5k
IGxlc3Mgc2NhcnkuCj4+Pj4gPgo+Pj4+ID4gUmVwb3J0ZWQtYnk6IERvdWdsYXMgQW5kZXJzb24g
PGRpYW5kZXJzQGNocm9taXVtLm9yZz4KPj4+PiA+IFN1Z2dlc3RlZC1ieTogUm9iaW4gTXVycGh5
IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4KPj4+PiA+IFNpZ25lZC1vZmYtYnk6IFNhaSBQcmFrYXNo
IFJhbmphbiA8c2FpcHJha2FzaC5yYW5qYW5AY29kZWF1cm9yYS5vcmc+Cj4+Pj4gPiAtLS0KPj4+
PiA+wqAgZHJpdmVycy9pb21tdS9hcm0tc21tdS5jIHwgMiArLQo+Pj4+ID7CoCAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4+PiAKPj4+PiBSZXZpZXdlZC1i
eTogRG91Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgo+Pj4gCj4+PiBJcyB0
aGlzIHBhdGNoIHdhaXRpbmcgb24gYW55dGhpbmcgaW4gcGFydGljdWxhciBub3c/wqAgRG8gd2Ug
bmVlZAo+Pj4gcmV2aWV3cyBmcm9tIFJvYmluIGFuZC9vciBXaWxsPwo+Pj4gCj4+IAo+PiBXYWl0
aW5nIGZvciB0aGVpciByZXZpZXdzIGFzIHRoZXkgYXJlIHRoZSBtYWludGFpbmVycy9yZXZpZXdl
cnMgOikKPiAKPiBTb3JyeSwgdGhpcyBkaWQgcmVnaXN0ZXIgYXQgdGhlIHRpbWUsIEkganVzdCBm
ZWx0IHRoYXQgaXQncyBhIGJpdAo+IHJlZHVuZGFudCB0byBnaXZlIGEgcmV2aWV3IHRhZyB0byBz
YXkgInllcywgdGhpcyBpcyBleGFjdGx5IHdoYXQgSQo+IHN1Z2dlc3RlZCIgOikKPiAKPiBUaGF0
IHNhaWQsIEkgZG8gd2lzaCBJIGhhZG4ndCBmb3Jnb3R0ZW4gYWJvdXQgdGhlIGRldl9ub3RpY2Ug
bWVzc2FnZQo+IGxldmVsLCBidXQgSSB0aGluayB0aGF0IGxpZXMgb3ZlciBpbiB0aGUgY29uY2Vw
dHVhbCBwdXJpdHkgY29ybmVyCj4gcmF0aGVyIHRoYW4gbWFraW5nIGFueSBwcmFjdGljYWwgZGlm
ZmVyZW5jZSwgc28gSSdtIHN0aWxsIE9LIHdpdGggdGhlCj4gcGF0Y2ggYXMtaXMuIFdpbGw/Cj4g
CgpJIGNhbiBjaGFuZ2UgdG8gZGV2X25vdGljZSBpZiB5b3UgaGF2ZSBzdHJvbmcgcHJlZmVyZW5j
ZSBmb3IgdGhhdC4KSSBjaG9zZSBkZXZfaW5mbyBzaW5jZSB3ZSBzZWUgdGhlIG1lc3NhZ2VzIG9u
IGV2ZXJ5IHJlYm9vdCBhbmQgdGhhdCAKbWFrZXMKaXQgbW9yZSBpbmZvcm1hdGlvbmFsIHRoYW4g
c29tZXRoaW5nIHRvIG5vdGljZSBldmVyeXRpbWUuCgo+IAo+IHAucy4gd2hvZXZlciBoYXMgdGhp
cyBlbnRyeSBpbiB0aGVpciBhZGRyZXNzIGJvb2sgZm9yIHRoZSBJT01NVSBsaXN0IAo+IChEb3Vn
Pyk6Cj4gCj4gImxpc3RAMjYzLm5ldDpJT01NVSBEUklWRVJTIDxpb21tdUBsaXN0cy5saW51eC1m
b3VuZGF0aW9uLm9yZz4sIEpvZXJnCj4gUm9lZGVsIDxqb3JvQDhieXRlcy5vcmc+LCIgPGlvbW11
QGxpc3RzLmxpbnV4LWZvdW5kYXRpb24ub3JnPgo+IAo+IGl0IHJlYWxseSBtZXNzZXMgdXAgVGh1
bmRlcmJpcmQncyBhYmlsaXR5IHRvIGdlbmVyYXRlIHdvcmtpbmcgaGVhZGVycwo+IGZvciBhIHJl
cGx5IDspCgpOb3QgbWUgOykKClRoYW5rcywKU2FpCi0tIApRVUFMQ09NTSBJTkRJQSwgb24gYmVo
YWxmIG9mIFF1YWxjb21tIElubm92YXRpb24gQ2VudGVyLCBJbmMuIGlzIGEgCm1lbWJlcgpvZiBD
b2RlIEF1cm9yYSBGb3J1bSwgaG9zdGVkIGJ5IFRoZSBMaW51eCBGb3VuZGF0aW9uCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
