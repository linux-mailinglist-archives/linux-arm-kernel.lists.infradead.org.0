Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B53E262024
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 16:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGuqWN2ot+/jfbjl89D1YhB6SDBcZ4DNC7Dmdj9Nc8g=; b=kVQ7w/UY/ADpbg
	4zum9W7Mn8zIxn7TbH0qHDONcueE8feAmWgB1U9kEZQQKen7C2Eys/Y8VuFrbValx+Ms+JRVuP5lo
	wbsTQAsUAEBkpI8/VhMWWkQUHqvWGDxKkoOKZQC1A3DLqQ8gMsZAjipKfsG2X3kkkmYNE2htNbZaF
	ewhnhqTWTXl6Qqt1Ig6svI/W0BciCZIFojd7e14gNm5wuLN4qTZUAaNo6yooZEZVmLwj6sZ/DDqRO
	HQJkPztqr8jUC9p/XWsFJjhxYBGgY106dmm7NmrBOR+XV+Qr4iEO1LOQWtCaInQ0J7ADLP6jrpagC
	Ucec1btZ4JfZZmvXhMqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUN7-00016k-63; Mon, 08 Jul 2019 14:12:01 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUMm-000167-OQ
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 14:11:43 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x68DvEfR027228; Mon, 8 Jul 2019 16:11:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=9ZEwWzg0Uii4givxH0OJnLeNumN/o+1u2NNv8phcpRs=;
 b=h0RK36rZGv+rpVsFpRfkdxTBMavvMhcNfqzJJsMwkZT3MRVCgUaLxVeknh79xllZCANZ
 n/b5TPtU7D4pGVNOH4vjCz4ZgCCpKDeGvhsTeMsmVrbfGmEZOO5SpmmwQEiIXGm/Cyt5
 UbiL8kMIFaefrZdFLrm61+4BnWedlug7w/bMQc+iqSvc3mYqr2Pp9R3zd+kUEOo/sHPy
 grE8rl4kQGczFjRrKqlnWdUPm5JmtsWTddkH8SYrhkmZJKkx/kLsa+z+jrt+vmW7mDqZ
 S7jystz8dpbdo9UuzNW2YZOyYS1nnJiYf3WW8hTFmNK/NaDQy2gHVWdgl/qISWRXNt7T /g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2tjgs9qhc4-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 08 Jul 2019 16:11:35 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 23C9A34;
 Mon,  8 Jul 2019 14:11:33 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F22EC5283;
 Mon,  8 Jul 2019 14:11:32 +0000 (GMT)
Received: from [10.48.0.131] (10.75.127.51) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 8 Jul
 2019 16:11:32 +0200
Subject: Re: [EXT] Re: [RFC 2/2] rpmsg: imx: add the initial imx rpmsg support
To: Oleksij Rempel <o.rempel@pengutronix.de>, Richard Zhu
 <hongxing.zhu@nxp.com>, "ohad@wizery.com" <ohad@wizery.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>
References: <1561968784-1124-1-git-send-email-hongxing.zhu@nxp.com>
 <1561968784-1124-3-git-send-email-hongxing.zhu@nxp.com>
 <3e0a061c-4f5e-ac32-031d-909a48644265@pengutronix.de>
 <AM0PR0402MB35706FFBFD76FF81BCF5E6018CF60@AM0PR0402MB3570.eurprd04.prod.outlook.com>
 <e4629709-fbe7-6af9-3cee-309b2ec1892f@pengutronix.de>
From: Arnaud Pouliquen <arnaud.pouliquen@st.com>
Openpgp: preference=signencrypt
Autocrypt: addr=arnaud.pouliquen@st.com; prefer-encrypt=mutual; keydata=
 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
 8mOik8I/F6EW8XyQAA2P
Message-ID: <fcdd6392-75f4-716d-5dbd-1828a679b25f@st.com>
Date: Mon, 8 Jul 2019 16:11:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <e4629709-fbe7-6af9-3cee-309b2ec1892f@pengutronix.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-08_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_071141_270100_85C988B6 
X-CRM114-Status: GOOD (  28.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Fabien DESSENNE <fabien.dessenne@st.com>,
 "loic.pallardy@st.com" <loic.pallardy@st.com>,
 "elder@linaro.org" <elder@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gUmljaGFyZCwKCk9uIDcvOC8xOSAxOjAyIFBNLCBPbGVrc2lqIFJlbXBlbCB3cm90ZToK
PiBIaSBSaWNoYXJkLAo+IAo+IE9uIDA4LjA3LjE5IDEyOjE3LCBSaWNoYXJkIFpodSB3cm90ZToK
Pj4gSGkgT2xla3NpajoKPj4gVGhhbmtzIGZvciB5b3VyIGNvbW1lbnRzLgo+Pgo+Pgo+Pj4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4+IEZyb206IE9sZWtzaWogUmVtcGVsIFttYWlsdG86
by5yZW1wZWxAcGVuZ3V0cm9uaXguZGVdCj4+PiBTZW50OiAyMDE55bm0N+aciDTml6UgMTc6MzYK
Pj4+IFRvOiBSaWNoYXJkIFpodSA8aG9uZ3hpbmcuemh1QG54cC5jb20+OyBvaGFkQHdpemVyeS5j
b207Cj4+PiBiam9ybi5hbmRlcnNzb25AbGluYXJvLm9yZzsgbGludXgtcmVtb3RlcHJvY0B2Z2Vy
Lmtlcm5lbC5vcmcKPj4+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7
IEZhYmllbiBERVNTRU5ORQo+Pj4gPGZhYmllbi5kZXNzZW5uZUBzdC5jb20+OyBsb2ljLnBhbGxh
cmR5QHN0LmNvbTsgYXJuYXVkLnBvdWxpcXVlbkBzdC5jb207Cj4+PiBzLWFubmFAdGkuY29tOyBl
bGRlckBsaW5hcm8ub3JnCj4+PiBTdWJqZWN0OiBbRVhUXSBSZTogW1JGQyAyLzJdIHJwbXNnOiBp
bXg6IGFkZCB0aGUgaW5pdGlhbCBpbXggcnBtc2cKPj4+IHN1cHBvcnQKPj4+Cj4+PiBDYXV0aW9u
OiBFWFQgRW1haWwKPj4+Cj4+PiBIaSBSaWNoYXJkLAo+Pj4KPj4+IE9uIDAxLjA3LjE5IDEwOjM0
LCBSaWNoYXJkIFpodSB3cm90ZToKPj4+PiBCYXNlZCBvbiAidmlydGlvX3JwbXNnX2J1cyIgZHJp
dmVyLCBUaGlzIHBhdGNoLXNldCBpcyB1c2VkIHRvIHNldCB1cAo+Pj4+IHRoZSBjb21tdW5pY2F0
aW9uIG1lY2hhbmlzbSBiZXR3ZWVuIEEgY29yZSBhbmQgTSBjb3JlIG9uIGkuTVggQU1QCj4+PiBT
T0NzLgo+Pj4+Cj4+Pj4gQWRkIHRoZSBpbml0aWFsIGlteCBycG1zZyBzdXBwb3J0IGdsdWUgZHJp
dmVyIGFuZCBvbmUgcGluZ3BvbmcgZGVtbywKPj4+PiBkZW1vbnN0cmF0ZWQgdGhlIGRhdGEgdHJh
bnNhY3Rpb25zIGJldHdlZW4gQSBjb3JlIGFuZCByZW1vdGUgTSBjb3JlLgo+Pj4+IERpc3RyaWJ1
dGVkIGZyYW1ld29yayBpcyB1c2VkIGluIElNWCBSUE1TRyBpbXBsZW1lbnRhdGlvbiwgcmVmZXIg
dG8KPj4+PiB0aGUgZm9sbG93aW5nIHJlcXVpcmVtZW50czoKPj4+PiDCoMKgwqAgLSBUaGUgQ0FO
IGZ1bmN0aW9ucyBjb250YWluZWQgaW4gTSBjb3JlIGFuZCBSVE9TIHNob3VsZCBiZSByZWFkeQo+
Pj4+IGFuZAo+Pj4+IMKgwqDCoMKgwqAgY29tcGxldGUgZnVuY3Rpb25hbCBpbiA1MG1zIGFmdGVy
IEFNUCBzeXN0ZW0gaXMgdHVybmVkIG9uLgo+Pj4+IMKgwqDCoCAtIFBhcnRpdGlvbiByZXNldC4g
U3lzdGVtIHdvdWxkbid0IGJlIHN0YWxsZWQgYnkgdGhlIGV4Y2VwdGlvbnMKPj4+PiAoZS54Cj4+
Pj4gwqDCoMKgwqDCoCB0aGUgcmVzZXQgdHJpZ2dlcmVkIGJ5IHRoZSBzeXN0ZW0gaGFuZykgb2Nj
dXJyZWQgYXQgdGhlIG90aGVyCj4+Pj4gc2lkZS4KPj4+PiDCoMKgwqDCoMKgIEFuZCB0aGUgUlBN
U0cgbWVjaGFuaXNtIHNob3VsZCBiZSByZWNvdmVyZWQgYXV0b21hY3RpbGx5IGFmdGVyCj4+PiB0
aGUKPj4+PiDCoMKgwqDCoMKgIHBhcnRpdGlvbiByZXNldCBpcyBjb21wbGV0ZWQuCj4+Pj4gSW4g
dGhpcyBzY2VuYXJpbywgdGhlIE0gY29yZSBhbmQgUlRPUyB3b3VsZCBiZSBraWNrZWQgb2ZmIGJ5
Cj4+Pj4gYm9vdGxvYWRlciBmaXJzdGx5LCB0aGVuIEEgY29yZSBhbmQgTGludXggd291bGQgYmUg
bG9hZGVkIGxhdGVyLiBCb3RoCj4+Pj4gTSBjb3JlL1JUT1MgYW5kIEEgY29yZS9MaW51eCBhcmUg
cnVubmluZyBpbmRlcGVuZGx5Lgo+Pj4+Cj4+Pj4gT25lIHBoeXNpY2FsIG1lbW9yeSByZWdpb24g
dXNlZCB0byBzdG9yZSB0aGUgdnJpbmcgaXMgbWFuZGF0b3J5Cj4+Pj4gcmVxdWlyZWQgdG8gcHJl
LXJlc2VydmVkIGFuZCB3ZWxsLWtub3duZWQgYnkgYm90aCBBIGNvcmUgYW5kIE0gY29yZQo+Pj4K
Pj4+IEkgZG9uJ3Qgc2VlIGFueSB0aGluZyBpbXggc3BlY2lmaWMgaW4gdGhpcyBwYXRjaC4gV2Ug
YWxyZWFkeSBoYXZlCj4+PiByZW1vdGVwcm9jCj4+PiB3aGljaCB3b3VsZCBwYXJzZSBmaXJtd2Fy
ZSBoZWFkZXIgYW5kIGNyZWF0ZSBuZWVkZWQgZGV2aWNlcy4gVGhpcwo+Pj4gZHJpdmVyIGlzCj4+
PiBvbmx5IG5lZWRlZCBmb3IgdGhlIGNhc2Ugd2hlcmUgZmlybXdhcmUgd2FzIHN0YXJlZCBieSB0
aGUgYm9vdGxvYWRlci4KPj4+Cj4+IFtSaWNoYXJkIFpodV0gQm9vdGxvYWRlciBzdGFydHMgdGhl
IGZpcm13YXJlIGlzIG1hbmRhdG9yeSByZXF1aXJlZCBpbgo+PiB0aGVzZSBzY2VuYXJpbwo+PiBy
ZWZlciB0byB0aGUgcmVhc29ucyBsaXN0ZWQgaW4gdGhlIGNvbW1pdC4KPj4gVGh1cywgdGhlIGRp
c3RyaWJ1dGVkIGZyYW1ld29yayBoYXMgdG8gYmUgdXNlZCwgYW5kIGJvdGggQSBjb3JlL0xpbnV4
Cj4+IGFuZCByZW1vdGUgY29yZS9SVE9TCj4+IHdvcmtzIGluZGVwZW5kZW50bHkuCj4+Cj4+PiBJ
IHBlcnNvbmFsbHkgd291bGQgcHJlZmVyIHRvIGhhdmUgZ2VuZXJpYyBkcml2ZXIgb3IgZXh0ZW5k
IHRoZQo+Pj4gcmVtb3RlcHJvYwo+Pj4gZnJhbWV3b3JrLiBTbyB3ZSBjYW4gbm90aWZ5IGtlcm5l
bCBhYm91dCB3b3JrIGFscmVhZHkgZG9uZSBieQo+Pj4gYm9vdGxvYWRlci4KPj4+Cj4+IFtSaWNo
YXJkIFpodV0gVGhhbmtzIGZvciB5b3VyIHN1Z2dlc3Rpb25zLgo+PiBSZWdhcmRpbmcgdG8gbXkg
dW5kZXJzdGFuZCwgaXQgc2VlbXMgdGhhdCBtYXN0ZXIvc2xhdmUgbW9kZSBpcyB1c2VkIGluCj4+
IHRoZSByZW1vdGVwcm9jIGN1cnJlbnRseS4KPj4gQSBjb3JlL0xpbnV4IGFjdHMgYXMgbWFzdGVy
LCB0byBjb250cm9scy9tYW5pcHVsYXRlcyByZW1vdGUgY29yZS9SVE9TLgo+PiBJdCBpc24ndCBh
cHBsaWNhYmxlIGZvciB0aGUgc2NlbmFyaW8gZGVzY3JpYmVkIGJ5IHRoaXMgcGF0Y2gtc2V0Lgo+
Pgo+Pj4gSW4gZ2VuZXJhbCwgc29tZSBtb3JlIGlzc3VlcyBzaG91bGQgYmUgc29sdmVkOgo+Pj4g
LSBIYW5kbGUgb3Igbm90IHRvdWNoIGlkbGUgY2xvY2tzIGZvciBkaWZmZXJlbnQgbm9kZSB1c2Vk
IGJ5IE0gY29yZQo+Pj4gYW5kIG5vdAo+Pj4gbWFpbiBzeXN0ZW0uCj4+PiAtIHBpbiBjb250cm9s
Cj4+PiAtIHJlZ3VsYXRvcnMKPj4+Cj4+PiBTVCBkZXZzIGFscmVhZHkgdHJpZWQgdG8gc29sdmUg
dGhpcyBpc3N1ZXMgYnkgY3JlYXRpbmcgInJlbW90ZXByb2M6Cj4+PiBhZGQgc3lzdGVtCj4+PiBy
ZXNvdXJjZSBtYW5hZ2VyIGRldmljZSIgcGF0Y2guIEkgZG9uJ3Qga25vdyB3aGF0IGlzIGN1cnJl
bnQgc3RhdGUgb2YKPj4+IGl0ICgvbWUKPj4+IGFkZGluZyBTVCBkZXZzIHRvIENDKS4KVGhlIHJl
c291cmNlIG1hbmFnZXIgaW1wbGVtZW50YXRpb24gYXMgYmVlbiBwcm9wb3NlZCBidXQgbm8gcmVh
bAphZGhlc2lvbiBvZiB0aGUgY29tbXVuaXR5IG9uIGl0Li4uIFBlcmhhcHMgU0NNSSBzaG91bGQg
YmUgYSBjYW5kaWRhdGUuLi4KCj4+Pgo+PiBbUmljaGFyZCBaaHVdIFllcywgaXQgaXMuIE1hbnkg
Y29udHJpYnV0aW9ucyBoYXZlIGJlZW4gbWFkZSBieSBGYWJpZW4uCj4+IElNSE8sIHRoZXJlIGFy
ZSBzb21lIGRpZmZlcmVudCBiZWhhdmlvcnMgb24gaU1YOFFYUC9RTSBwbGF0Zm9ybXMsIHRoZQo+
PiDCoCByZXNvdXJjZXMgKGUueCBJUCBtb2R1bGVzKSBoYWQgYmVlbiBhc3NpZ25lZCBhbmQgbWFu
YWdlZCBieSB0aGUgWFJEQy4KPj4gSW4gdGhlIG90aGVyIHdvcmRzLCB0aGUgSFcgcmVzb3VyY2Vz
IHdvdWxkIGJlIGFzc2lnbmVkIGFuZCBtYW5hZ2VkIHdvdWxkCj4+IMKgIGJlIHRyYW5zcGFyZW50
IHRvIFNXLgo+Pgo+PiBUaHVzLCBib3RoIEEgY29yZS9MaW51eCBhbmQgTSBjb3JlL1JUT1MgY2Fu
IHdvcmsgcmVhbCBpbmRlcGVuZGVudGx5Lgo+PiBTeXN0ZW0gd291bGRuJ3QgYmUgc3RhbGxlZCBi
eSB0aGUgZXhjZXB0aW9ucyAoZS54IHRoZSByZXNldCB0cmlnZ2VyZWQKPj4gYnkgdGhlCj4+IHN5
c3RlbSBoYW5nKSBvY2N1cnJlZCBhdCB0aGUgb3RoZXIgc2lkZS4gQW5kIHRoZSBSUE1TRyBtZWNo
YW5pc20gc2hvdWxkCj4+IMKgIGJlIHJlY292ZXJlZCBhdXRvbWF0aWNhbGx5IGFmdGVyIHRoZSBw
YXJ0aXRpb24gcmVzZXQgaXMgY29tcGxldGVkLgo+IAo+IEl0IGlzIGV4YWN0bHkgdGhlIHdheSBJ
IGRpZCB1bmRlcnN0b29kIGl0IGluIHRoZSBmaXJzIG1haWwuIEFueSB3YXksIGknbSBvawo+IHdp
dGggdGhpcyBkcml2ZXIuIEp1c3QgcmVuYW1lIGlteCB0byBzb21lIHRoaW5nIGdlbmVyaWMuIFRo
aXMgZHJpdmVyIGNhbgo+IGFuZCB3aWxsIGJlIHJldXNlZCBvbiBvdGhlciBwbGF0Zm9ybXMgYXMg
d2VsbC4KPiAKPiBLaW5kIHJlZ2FyZHMsCj4gT2xla3NpaiBSZW1wZWwKPiAKCkknbSB0cnlpbmcg
dG8gZmlndXJlIG91dCB3aGF0IGlzIHRoZSBpbnRlcmVzdCBvZiB0aGVzZSBkcml2ZXJzIHZzCmV4
aXN0aW5nIG9uZXMuClBsZWFzZSBmaW5kIGJlbG93IGEgbGlzdCBvZiBmZWF0dXJlcyBpIG5vdGlj
ZWQgaW4geW91ciBkcml2ZXIgKGRvbid0Cmhlc2l0YXRlIGlmIGkgbWlzc2VkIHNvbWUgb2YgdGhl
bSksIHdpdGggc29tZSBjb21tZW50cy9xdWVzdGlvbnMuCgoxKSBUaGUgY29wcm9jZXNzb3IgaXMg
c3RhcnRlZCBiZWZvcmUgdGhlIG9uZSBydW5uaW5nIExpbnV4IE9TLgpIYXZlIHlvdSB0YWtlbiBh
IGxvb2sgdG8gdGhpcyBzZXQgb2YgcGF0Y2hlcyBwcm9wb3NlZCBieSBMb2ljOgpodHRwczovL2xr
bWwub3JnL2xrbWwvMjAxOC8xMS8zMC8xNTcKd2l0aCB0aGlzIHBhdGNoIHlvdSBzaG91bGQgYmUg
YWJsZSB0byJhdHRhY2giIG9uIHRoZSBmbHkgb24gYSBwcmVsb2FkZWQKZmlybXdhcmUuCgoyKSBS
UE1TRyByZWNvdmVyeQpBZ3JlZSB3aXRoIHlvdSwgdGhpcyBmZWF0dXJlIGlzIGltcG9ydGFudCBp
biBBTVAgc3lzdGVtcywgYXMgY29yZXMgY2FuCmhhdmUgdGhlaXIgb3duIGxpdmUgY3ljbGUuCgpC
dXQgSSBjYW4gbm90IHNlZSByZWxhdGVkIGNvZGUsIGNvdWxkIHlvdSBwb2ludCBvdXQgaXQgdG8g
bWU/CgpDb3VsZCB5b3UgZXhwbGFpbiBIb3cgZG8geW91IHJlY292ZXIgdGhlIHJwbXNnIGNoYW5u
ZWxzIHRoYXQgaGFzIGJlZW4KYWxyZWFkeSBlc3RhYmxpc2hlZD8KRm9yIGluc3RhbmNlIHdoYXQg
aGFwcGVuIGlmIHlvdXIgY29wcm9jZXNzb3IgY3Jhc2ggZHVyaW5nIHRoZSBycG1zZwpwaW5ncG9u
ZyBkZW1vPwoKMykgcGluZy1wb25nIGRlbW8gc2FtcGxlClBlcmhhcHMgeW91IGNvdWxkIHJlLXVz
ZSB0aGUgcnBtc2cgc2FtcGxlIGF2YWlsYWJsZSBoZXJlOgpodHRwczovL2VsaXhpci5ib290bGlu
LmNvbS9saW51eC92NS4yL3NvdXJjZS9zYW1wbGVzL3JwbXNnCgo0KSBObyB1c2Ugb2YgdGhlIHJl
c291cmNlIHRhYmxlCklzIHRoZXJlIGEgcmVhc29uIHRvIG5vdCB1c2UgdGhlIHJlc291cmNlIHRh
YmxlIHRvIGRlY2xhcmUgdGhlIHRoZQp2cmluZ3M/IFlvdXIgaW1wbGVtZW50YXRpb24gc2VlbXMg
dG8gaW1wb3NlIHRoZSBzYW1lIGRlZmluaXRpb24gaW4gYm90aApmaXJtd2FyZSB3aGlsZSByZXNv
dXJjZSB0YWJsZSBhbGxvdyB0byBzaGFyZSB0aGVtLgpGdXJ0aGVybW9yZSB0aGUgcmVzb3VyY2Ug
dGFibGUgY291bGQgYmUgdXBkYXRlZCBieSB0aGUgTGludXggYmVmb3JlIHRoZQpyZW1vdGUgcHJv
YyBpcyBzdGFydGVkIChpbiBjYXNlIG9mIExpbnV4IGJvb3RpbmcgZmlyc3QpCgo1KSBzbGF2ZSBh
bmQgbWFzdGVyIG1vZGUgc3VwcG9ydC4KU2VlbXMgdGhhdCB0aGlzIGRyaXZlcnMgbm90IGZ1bGx5
IHJlc3BlY3QgdGhlIHZpcnRpbyBwcm90b2NvbCAoZm9yCmluc3RhbmNlIHN0YXR1cyBmaWVsZCku
IElmIHlvdSB1c2UgYSBzeW5jaHJvIG1lY2hhbmlzbSAobWFpbGJveC4uLikgbm90CnN1cmUgdGhh
dCB5b3UgcmVhbGx5IG5lZWQgdG8gYmUgdmlydGlvIHNsYXZlIG9uIExpbnV4LgoKVGhhbmtzLApB
cm5hdWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
