Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 811431DEBF2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 17:34:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0TMKOO0fNlT2FmT2hycsWIt+vmEiv4Dy3ViG1Iiz44=; b=f2OpwCrWHQB/Ox
	hWVm/5jWuIlfk3uVz9N7t3w2p1C+3ShWDjCb54BNvCGpzr2opwXa7m7SCQ50OMljGvwGtxoQrSype
	vLdxsks/oeQkInDaKeNfNzTX+KFzrP5zs8eGrQIU38SZ70UiQrGkAbC2oheQkhYXRWJWrgzxGcHxT
	k5rfB6oVSwS01D4Xhtx4Am+tECpt8Qq0B68qbo5OTEC6BD5hrfI7sLnjvqqwMAoW0v1kCcO7rPRuj
	a96qqazq/BDlF2rApiBKjppYKdpG6NXEqowIYLx4rs+2aUxNK0WrR6l8aU7dTEcmyyoYdDJH8lTKv
	tgio3URgTnONCsnz7QyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9ga-000309-V7; Fri, 22 May 2020 15:34:12 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9gD-0002uT-1b
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 15:33:52 +0000
Received: by mail-wm1-x342.google.com with SMTP id u12so5426243wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 08:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hcAXj+h6riPB6ZVFEUDphaR6SMt//XrFMgdCLb/lUPw=;
 b=ZXPT8vQKI0THre0nWQptX5DX3OQEF0MPvOLZC7BlkLaE8b8NlW7h8xPy4kbSwyIZHV
 pWs116H27CkgzXUT7qAcDmdmELdwgYchJL2Wm/AczM9aL0p/p7gE2uGxh2SV0rFX7XHl
 RxcaGG0N7CkRI162e7zraSaqMieQFCIrcm3Xuwm+s2vSd6PyqmJbKTs4BD9MDjdvWpbp
 efG81d4dq20GG9GGcLe9ZagCLUuMs/imDDvN9h5F6VPHNcCzTdZb4Nhkfu1AjzTQJVhd
 6+qPw/syj140kRSQa8Ae/WBtvlLjXn6BaoIpSYLcUuzNmVu9CoerPfegvw+D7g1xaLLA
 2SbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hcAXj+h6riPB6ZVFEUDphaR6SMt//XrFMgdCLb/lUPw=;
 b=EwEYY0JWToyXNUBPCIdrawxSDpmZaPA2353ymuwjPPsim2SHCJL2ayAHtB2U+X0uRS
 /VYsATxDuOauDr2nqLSeA8tQA8+tcSmVC1nnYOgL4SI5QXUZTbSb9WQy1smEfGnDs9ov
 171LXKDRDpKZbfUkcYU44AZzehMqSAkSpjgdFDe7gavdKxpZY/l/OzBXG+fZdQtKfniB
 l2FqlboTiEyhflUtY55ypbu/tfWJxVpSBWik+DymMx8vrmIrC9Mrm5OwAeTaFuuW+XY2
 Haro3AGaEC06bR3+yZpBi/LMyoXf/TA3AvuUc6G6TCWFkGkOXho1c4+Vm1o2N1OdOecW
 +8PQ==
X-Gm-Message-State: AOAM532lCEShoLOlcHaBIozYBurb6hlOzr4vdbd11scs6OdC3rrjyK03
 acurF++e4KBQ9YdEsnjezI3wJg==
X-Google-Smtp-Source: ABdhPJxxBsnw5zL4lBpgkFI3TE2YpKrnDJ7HYXK3kVd96/lV1AeheFpxuXyyvMvX9yH1jJgZavj/BQ==
X-Received: by 2002:a1c:9d85:: with SMTP id
 g127mr12895128wme.149.1590161626832; 
 Fri, 22 May 2020 08:33:46 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:a82f:eaec:3c49:875a?
 ([2a01:e34:ed2f:f020:a82f:eaec:3c49:875a])
 by smtp.googlemail.com with ESMTPSA id d13sm9605844wmb.39.2020.05.22.08.33.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 08:33:46 -0700 (PDT)
Subject: Re: [v4,5/7] thermal: mediatek: mt8183: fix bank number settings
To: Michael Kao <michael.kao@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, hsinyi@chromium.org,
 linux-pm@vger.kernel.org, srv_heupstream@mediatek.com
References: <20200323121537.22697-1-michael.kao@mediatek.com>
 <20200323121537.22697-6-michael.kao@mediatek.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <c88aab57-7c0b-cb9a-3ee0-68e7c140c985@linaro.org>
Date: Fri, 22 May 2020 17:33:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200323121537.22697-6-michael.kao@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_083349_105665_5AAF6502 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjMvMDMvMjAyMCAxMzoxNSwgTWljaGFlbCBLYW8gd3JvdGU6Cj4gTVQ4MTgzX05VTV9aT05F
UyBzaG91bGQgYmUgc2V0IHRvIDEKPiBiZWNhdXNlIE1UODE4MyBkb2Vzbid0IGhhdmUgbXVsdGlw
bGUgYmFua3MuCgpBcHBhcmVudGx5IHRoaXMgaXMgYSBob3QgZml4LiBDYW4geW91IGNvbmZpcm0g
YW5kIGV4cGxhaW4gd2hhdCBpcyB0aGUKcHJvY2VkdXJlIHRvIGhpdCB0aGUgYnVnPwoKSSdsbCBw
aWNrIGl0IGZvciB0aGUgbmV4dCAtcmMgaWYgcG9zc2libGUKCj4gRml4ZXM6IGE0ZmZlNmI1MmQy
NyAoInRoZXJtYWw6IG1lZGlhdGVrOiBhZGQgc3VwcG9ydCBmb3IgTVQ4MTgzIikKPiBTaWduZWQt
b2ZmLWJ5OiBNaWNoYWVsIEthbyA8bWljaGFlbC5rYW9AbWVkaWF0ZWsuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IEhzaW4tWWkgV2FuZyA8aHNpbnlpQGNocm9taXVtLm9yZz4KPiAtLS0KPiAgZHJpdmVy
cy90aGVybWFsL210a190aGVybWFsLmMgfCA1ICsrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVy
bWFsL210a190aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwvbXRrX3RoZXJtYWwuYwo+IGluZGV4
IDc2ZTMwNjAzZDRkNS4uNmI3ZWYxOTkzZDdlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdGhlcm1h
bC9tdGtfdGhlcm1hbC5jCj4gKysrIGIvZHJpdmVycy90aGVybWFsL210a190aGVybWFsLmMKPiBA
QCAtMjExLDYgKzIxMSw5IEBAIGVudW0gewo+ICAvKiBUaGUgdG90YWwgbnVtYmVyIG9mIHRlbXBl
cmF0dXJlIHNlbnNvcnMgaW4gdGhlIE1UODE4MyAqLwo+ICAjZGVmaW5lIE1UODE4M19OVU1fU0VO
U09SUwk2Cj4gIAo+ICsvKiBUaGUgbnVtYmVyIG9mIGJhbmtzIGluIHRoZSBNVDgxODMgKi8KPiAr
I2RlZmluZSBNVDgxODNfTlVNX1pPTkVTICAgICAgICAgICAgICAgMQo+ICsKPiAgLyogVGhlIG51
bWJlciBvZiBzZW5zaW5nIHBvaW50cyBwZXIgYmFuayAqLwo+ICAjZGVmaW5lIE1UODE4M19OVU1f
U0VOU09SU19QRVJfWk9ORQkgNgo+ICAKPiBAQCAtNDk3LDcgKzUwMCw3IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgbXRrX3RoZXJtYWxfZGF0YSBtdDc2MjJfdGhlcm1hbF9kYXRhID0gewo+ICAgKi8K
PiAgc3RhdGljIGNvbnN0IHN0cnVjdCBtdGtfdGhlcm1hbF9kYXRhIG10ODE4M190aGVybWFsX2Rh
dGEgPSB7Cj4gIAkuYXV4YWRjX2NoYW5uZWwgPSBNVDgxODNfVEVNUF9BVVhBRENfQ0hBTk5FTCwK
PiAtCS5udW1fYmFua3MgPSBNVDgxODNfTlVNX1NFTlNPUlNfUEVSX1pPTkUsCj4gKwkubnVtX2Jh
bmtzID0gTVQ4MTgzX05VTV9aT05FUywKPiAgCS5udW1fc2Vuc29ycyA9IE1UODE4M19OVU1fU0VO
U09SUywKPiAgCS52dHNfaW5kZXggPSBtdDgxODNfdnRzX2luZGV4LAo+ICAJLmNhbGlfdmFsID0g
TVQ4MTgzX0NBTElCUkFUSU9OLAo+IAoKCi0tIAo8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGlu
YXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGlu
YXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8
aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3Lmxp
bmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
