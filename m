Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE25F723B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 11:34:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4sQxN0cLKjZApcTrhA4jfMy+lxu/mSMsjO8qqP/ojCY=; b=CYtVv8ulEdJaB2
	b/5RD5ZdOtX9ahLGIo7pijWHxgDbvUm2sBS7BPzRvnnhKjgaczr36Pf7rZ8z5TxlbEuMOppb2biyL
	8rs4GWDD7G8bfyh61EMqmDJtjMHVDKTNkrU3+4AkaPwjnrLTk6cjN68FXoQQOGQPdNwewaPkSnebk
	SVbFTg/+1J9BkJ4UqHtCKAXyj8IK3ctTPUFJcdsAbdy/q4J4FQw3ih98TiYTT8SghYBlV1pctUy3e
	UjjAI6p6vE+4IfjXTlaO7L4kc/9yyci9vvaLTspkxA8kSLNxMbR3FhWo5gemkGTHbm/D+2o/sJxe+
	HPq9m++WykmOzxBO8sVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU71Q-0005PN-L6; Mon, 11 Nov 2019 10:34:12 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU6xz-0004Do-Vm
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 10:30:43 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xABAUaL6024709;
 Mon, 11 Nov 2019 04:30:36 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573468236;
 bh=J49vO9a5Q6nbdkFfwrMnpwhRrLhy3uz8gGzESzCD4oo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=J0pC0vQNOwWzcvvyyQL76SmlVuEzN0Z+CjL83wyC4lp4rBJiQ2R1WTU+ky0182CGU
 FTXTm6Qn7grF70n77I6mtxC44f2VRRamde1Mg5BmLaZlzhLGa12VcCNxC08G61KIOA
 d5uzuQB+yddSy3ouqSKbKhg+hMh59KTqSgK/uEBU=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xABAUZfl057030
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 11 Nov 2019 04:30:35 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 11
 Nov 2019 04:30:17 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 11 Nov 2019 04:30:17 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xABAUVBd048429;
 Mon, 11 Nov 2019 04:30:31 -0600
Subject: Re: [PATCH v4 15/15] dmaengine: ti: k3-udma: Add glue layer for non
 DMAengine users
To: Vinod Koul <vkoul@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-16-peter.ujfalusi@ti.com>
 <20191111061258.GS952516@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <6d4d2fcc-502b-4b41-cd71-8942741f4ad8@ti.com>
Date: Mon, 11 Nov 2019 12:31:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111061258.GS952516@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_023040_087728_5D99D6E5 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMS8xMS8yMDE5IDguMTIsIFZpbm9kIEtvdWwgd3JvdGU6Cj4gT24gMDEtMTEtMTksIDEw
OjQxLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4gRnJvbTogR3J5Z29yaWkgU3RyYXNoa28gPGdy
eWdvcmlpLnN0cmFzaGtvQHRpLmNvbT4KPj4KPj4gQ2VydGFpbiB1c2VycyBjYW4gbm90IHVzZSBy
aWdodCBub3cgdGhlIERNQWVuZ2luZSBBUEkgZHVlIHRvIG1pc3NpbmcKPj4gZmVhdHVyZXMgaW4g
dGhlIGNvcmUuIFByaW1lIGV4YW1wbGUgaXMgTmV0d29ya2luZy4KPj4KPj4gVGhlc2UgdXNlcnMg
Y2FuIHVzZSB0aGUgZ2x1ZSBsYXllciBpbnRlcmZhY2UgdG8gYXZvaWQgbWlzdXNlIG9mIERNQWVu
Z2luZQo+PiBBUEkgYW5kIHdoZW4gdGhlIGNvcmUgZ2FpbnMgdGhlIG5lZWRlZCBmZWF0dXJlcyB0
aGV5IGNhbiBiZSBjb252ZXJ0ZWQgdG8KPj4gdXNlIGdlbmVyaWMgQVBJLgo+IAo+IENhbiB5b3Ug
YWRkIHNvbWUgbm90ZXMgb24gd2hhdCBhbGwgZmVhdHVyZXMgZG9lcyB0aGlzIGxheWVyIGltcGxl
bWVudC4uCgpJbiB0aGUgY29tbWl0IG1lc3NhZ2Ugb3IgaW4gdGhlIGNvZGU/CgotIFDDqXRlcgoK
VGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVs
c2lua2kuClktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNp
bGU6IEhlbHNpbmtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
