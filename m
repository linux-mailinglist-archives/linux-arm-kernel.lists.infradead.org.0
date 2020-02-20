Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 931B0165CFA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 12:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npJW+/6jFkYKpm+PcTY0OKBN49edD0wBzsgPMt52dlw=; b=f4IzCKBAF1D92V
	/4gwHDK3aRps9QphpAGtpTaTi0VPay4gBORLzQmmdEConX6MvmMfxNTvYVLZUXAhhCc2RhhvXc+LV
	fvH4GCp5FRnGNdRqsODxsETUZ+rfDNhRZpsQTAMfzBHir4jTjJY4tyjSNHG95Mq6n9DTdYXayaKFB
	Oej2q/ymQ/TJ+euYf0nYYmMuJByQ8fo7SJBhbL0lWWaZLvZYDykfkdh50Ln1MEjppTZe781Sj1v7z
	s9oa7KThz/kNqG5y2fC66kzRW0QZUNBfLChaslT8snyv0KLwmvirKmfgGIxH2s1kougsrS85ssvGd
	mMOJM1JUqzRhC9ID5S4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4kNf-0005eF-GH; Thu, 20 Feb 2020 11:52:35 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4kNX-0005dU-OR
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 11:52:29 +0000
Received: by mail-wm1-x341.google.com with SMTP id t14so1716251wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 03:52:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7lTZ9++Wb8eQX5Jmr63TdaSze6U72ghS/aLmJyJXjx8=;
 b=ZUwC6fRZd6xKyfGcu0XbIsz/oLK/lXO4xNKlra+fnF9S/KeDjJiKCE1I5480Pxm0Bt
 6JdPP1W9hiAQVXFqeS4HriNmuC9XEJp3VCKhjcnFrpU83TM198T0kVVTEGWFyWUH7kNx
 78kJpCBkzMIBakXzRfU68d7ciWBqS7MD0mTCBVVSWKu7Cxm2uAH05LS0UI6ItI2L/1SR
 BUQrNJA9r386UTiJ21wr46ylEizbGOX5nZHLTqjvPf2dvMkPAn7ZAQIfX9jXMuyGYTcY
 MMOuDSUjhJZZV7bJfT/PmXppCbRkb5kigKrqniV4Svso3Lo9V+HtdqcpUw7tJinxOU8h
 K17Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=7lTZ9++Wb8eQX5Jmr63TdaSze6U72ghS/aLmJyJXjx8=;
 b=NyU5BcnrAsX+5e5G4kqcNmH/NBMIRUm5JqtAWYuNALofQPPH+c+nIynCnbTU56oQRD
 Oih2WD6Bsb+oZHm8yt3bPP6r2JSAbCGss6OJubDhH5je3t4AqyKEoUG8YfEdt5PFuEv4
 ZcHbUoLEqE9XGSUFkd335bNR5nVQn2naxE5PJfLWeebAwCwHV7YT1eEJmRWjhGLBOQTT
 jKGs+doZT7zAOJnBg3xviMsm3Aoo+J7ClQQXRoo3/Ff55ZZWkRgLCYfl8+7vukW0xFKw
 BQoiuhUT4/sPUXGCnI6QyTrLWsd/Uq1Rc1MSj+Bc+rGZW41PN4MaGD5c9QMF+MQFOA7U
 v0tA==
X-Gm-Message-State: APjAAAVzI53YqQnepiv0Q01aoJkAlHlie4BrfG4d+ONVRyhxRvXQjKDX
 /XQPLVts4DjsXALHN8tfLndpV4lI6aA=
X-Google-Smtp-Source: APXvYqyGUFoBJRGu1uNfO3m1rSPDep6iSqG3+jTh4igpwj5sSVRtIr/Q9fGadVUCsDPVX19XP8T+4A==
X-Received: by 2002:a1c:113:: with SMTP id 19mr4226036wmb.95.1582199545865;
 Thu, 20 Feb 2020 03:52:25 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:1d8d:74ba:7173:f47f?
 ([2a01:e34:ed2f:f020:1d8d:74ba:7173:f47f])
 by smtp.googlemail.com with ESMTPSA id l8sm4584200wmj.2.2020.02.20.03.52.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Feb 2020 03:52:25 -0800 (PST)
Subject: Re: [PATCH v3,1/8] arm64: dts: mt8183: add thermal zone node
To: Michael Kao <michael.kao@mediatek.com>
References: <20200103064407.19861-1-michael.kao@mediatek.com>
 <20200103064407.19861-2-michael.kao@mediatek.com>
 <00c8be46-3ba1-571a-0230-7c722ce1901e@linaro.org>
 <1581391046.31005.12.camel@mtksdccf07>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <270efbcf-51bb-629f-c64b-fa343b3d2988@linaro.org>
Date: Thu, 20 Feb 2020 12:52:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1581391046.31005.12.camel@mtksdccf07>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_035227_805615_23E18D41 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 hsinyi@chromium.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEvMDIvMjAyMCAwNDoxNywgTWljaGFlbCBLYW8gd3JvdGU6Cj4gT24gVGh1LCAyMDIwLTAx
LTA5IGF0IDEyOjMxICswMTAwLCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPj4gT24gMDMvMDEvMjAy
MCAwNzo0NCwgTWljaGFlbCBLYW8gd3JvdGU6Cj4+PiBGcm9tOiAibWljaGFlbC5rYW8iIDxtaWNo
YWVsLmthb0BtZWRpYXRlay5jb20+Cj4+Pgo+Pj4gQWRkIHRoZXJtYWwgem9uZSBub2RlIHRvIE1l
ZGlhdGVrIE1UODE4MyBkdHMgZmlsZS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWVsIEth
byA8bWljaGFlbC5rYW9AbWVkaWF0ZWsuY29tPgo+Pj4gLS0tCj4+PiAgYXJjaC9hcm02NC9ib290
L2R0cy9tZWRpYXRlay9tdDgxODMuZHRzaSB8IDg1ICsrKysrKysrKysrKysrKysrKysrKysrKwo+
Pj4gIDEgZmlsZSBjaGFuZ2VkLCA4NSBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLmR0c2kgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL21lZGlhdGVrL210ODE4My5kdHNpCj4+PiBpbmRleCAxMGIzMjQ3MWJjN2IuLmEyNzkz
Y2YzZDk5NCAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4
MTgzLmR0c2kKPj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLmR0
c2kKPj4+IEBAIC01NzAsNiArNTcwLDg4IEBACj4+PiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsK
Pj4+ICAJCX07Cj4+PiAgCj4+PiArCQl0aGVybWFsOiB0aGVybWFsQDExMDBiMDAwIHsKPj4+ICsJ
CQkjdGhlcm1hbC1zZW5zb3ItY2VsbHMgPSA8MT47Cj4+PiArCQkJY29tcGF0aWJsZSA9ICJtZWRp
YXRlayxtdDgxODMtdGhlcm1hbCI7Cj4+PiArCQkJcmVnID0gPDAgMHgxMTAwYjAwMCAwIDB4MTAw
MD47Cj4+PiArCQkJaW50ZXJydXB0cyA9IDwwIDc2IElSUV9UWVBFX0xFVkVMX0xPVz47Cj4+Cj4+
IFdoYXQgaXMgdGhpcyBpbnRlcnJ1cHQgZm9yPwo+IAo+IFRoZSBpbnRlcnJ1cHRzIHBpbiBpcyBk
ZXNpZ25lZCBpbiBvdXIgU29DLiBCdXQgaXQgaXMgbm90IHVzZWQgaW4gb3VyCj4gdXBzdHJlYW0g
dGhlcm1hbCBjb2RlIG5vdy4gVGhlcmUgaXMgYWxzbyBhZGQgdGhlIHNldHRpbmdzIGJ1dCBub3Qg
dXNlCj4gZm9yIG10ODE3My5kdHNpLiBUbyBhbGlnbiB0aGUgdGhlcm1hbCBkdHNpIGZvcm1hdCwg
SSBmb2xsb3cgdGhlIHBhc3QKPiBleHBlcmllbmNlIHRvIGFkZCB0aGUgaW50ZXJydXB0IHNldHRp
bmdzIG9mIHRoaXMgcHJvamVjdCBmaXJzdC4KCkFzc3VtaW5nIHRoZSBpbnRlcnJ1cHQgY2FuIGJl
IHNldCBieSB0aGUgZHJpdmVyIHRvIGZpcmUgd2hlbiBhIHNwZWNpZmllZAp0ZW1wZXJhdHVyZSBp
cyBzZXQsIEkgc3VnZ2VzdCB0byBjaGFuZ2UgeW91ciBkcml2ZXIgdG8gaGFuZGxlIGl0IHNvIHlv
dQpjYW4gZ2V0IHJpZCBvZiB0aGUgcG9sbGluZyB3YWtpbmcgdXAgdGhlIFNvQyBldmVyeSBzZWNv
bmQuCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBz
b3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cu
ZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29t
LyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJs
b2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
