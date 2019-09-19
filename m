Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29004B788F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 13:37:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XhuUgoG46XyVZz8NlET+1X4V2Pm054txjR3JODLzs2o=; b=TJSVH6IsGmiz2T1/4T+Y25Jtk
	HGzY/b8B5AgFOjTpn6ufRjv4HqPHaxjvTX15nXdxRzVi3iuVuMDSvEKT0PIKsePorBvbLv/GYPEr0
	9L14mO1vQRvvUSMAJWdUPtqdUhJsal4HUCrEs30V/I1kqT4AMKyB9b4TovuVC4dcXkvJGMpHU392Y
	3uj6uFao4Kfd04YezdtTb9hHYcanfCGneCR6F1hS0iuIc5W07XDNcL4XGgViAlL+y+ymPMH7YI9Y2
	keTSaU7ezPaE3rDZ2mjWxhesWs29hs2BlVLw/vtZOHOFFEyYv7yYZSMcNUZ4pq3+aKPYL+q4g3KrO
	Ma3938bCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAukH-0005ov-HX; Thu, 19 Sep 2019 11:37:10 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAujV-0005oO-3E; Thu, 19 Sep 2019 11:36:22 +0000
Received: by mail-wm1-x344.google.com with SMTP id i16so4071777wmd.3;
 Thu, 19 Sep 2019 04:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=D1vZLJBNdwLJcR15QNa7GnTaPz3ykDl4G6RRyeU9kl8=;
 b=o07Tyjqghx9bs4O1iIu8fJy1k1OGl9v1WCdYVPCjNq0JdKmP4e1MEo5wRiqhJ/8UL9
 RjiZGh+06tDYEH6Dw5NCv2qZRPOQLxH6bTSA8YX1B3ZH6X23poIDQP/AVDqASyckDVHK
 4XLN2q/KKHJylC1wS3iSq9wmaCp+L+mVR9Rx476REzIRn6Uo+ug/edqZB/yHMa8StuoV
 tdX0Z5MJJIZk9o10FE6mfqdfKswwKzsQca40Yhm5xsqfIiTlwr9P46t1vpyumeccm2SS
 gzlwzeq+U6hSdQRsVsR0nRnc5EbJB2HlZL5Z/Uf7q0JGYkIW0XDPSE+NI8w/pQiKH8MA
 g8BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=D1vZLJBNdwLJcR15QNa7GnTaPz3ykDl4G6RRyeU9kl8=;
 b=FGoPUaSbGFV9ZIT/dR6Dn+SD8L2BT2rOxrmPQfcaBwvnT2X6DSlavG+N+J704RySaE
 fWVHT6Mgmfzv1DiocGTi6g/EmZUwfbF9mcu5Uy48xIRfg38yDnHW0aTU2PxxhTNTfL0U
 fcLOvknRtI2YkJrnP5ViJzKHSril4WO4J1QWuNQ+t9XanJo3Pz7sBGPbjbKtA719AnAV
 QJH9uOf6VA+5DiK4aD8eRlqzWn8SRUxqeFCGr0+4eQl9wTIwHva/nYj3rMOkuN3RhFlj
 4UOQex3ym19YwDHw2WzPajERguFaav/24mCaO05Yw/CpU8fIHqHMWKwvNVSlx59WLNLJ
 NpmQ==
X-Gm-Message-State: APjAAAW9kawwTFfOvkEJxTp574AlX8zToUHDChI5G1r7ruwLpvtm49BY
 ySAprul5FAjKtbsOWX+e4OU=
X-Google-Smtp-Source: APXvYqyAwy3PFFQNcIkSusblMU+xvYWCWWPwKHOT0G+F5vcXxm7WOivcwFDk2Osce2RwLCZRG4QFiw==
X-Received: by 2002:a1c:2d11:: with SMTP id t17mr2521207wmt.147.1568892979432; 
 Thu, 19 Sep 2019 04:36:19 -0700 (PDT)
Received: from localhost ([92.59.185.54])
 by smtp.gmail.com with ESMTPSA id d193sm8701719wmd.0.2019.09.19.04.36.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 04:36:18 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Felipe Balbi <balbi@kernel.org>
Subject: Re: [PATCH] usb: dwc3: Add shutdown to
 =?iso-8859-1?Q?platform=5Fdriver?=
Date: Thu, 19 Sep 2019 13:36:17 +0200
MIME-Version: 1.0
Message-ID: <e226af9a-3719-4641-9f8c-402e8de7b058@gmail.com>
In-Reply-To: <20190817174140.6394-1-vicencb@gmail.com>
References: <4d18d4f7-a00e-bd60-6361-51054eba3bca@arm.com>
 <20190817174140.6394-1-vicencb@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_043621_166700_B0CCC454 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 MarcZyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UGluZz8KCk9uIFNhdHVyZGF5LCBBdWd1c3QgMTcsIDIwMTkgNzo0MTo0MCBQTSBDRVNULCBWaWNl
bnRlIEJlcmdhcyB3cm90ZToKPiBPdGhlcndpc2UgdGhlIGRldmljZSBrZWVwcyB3cml0aW5nIHRv
IG1lbW9yeSBhZnRlciBrZXhlYyBhbmQgZGlzdHVyYnMKPiB0aGUgbmV4dCBrZXJuZWwuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBWaWNlbnRlIEJlcmdhcyA8dmljZW5jYkBnbWFpbC5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvdXNiL2R3YzMvZHdjMy1vZi1zaW1wbGUuYyB8IDYgKysrKysrCj4gIDEgZmlsZSBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPgo+IEhpIEZlbGlwZSwgUm9iaW4sCj4gdGhpcyB2ZXJz
aW9uIGNhbGxzICdyZW1vdmUnIGZyb20gJ3NodXRkb3duJyBpbnN0ZWFkIG9mIGp1c3QgYXNzZXJ0
aW5nCj4gYSByZXNldCBiZWNhdXNlIGl0IGxvb2tzIGxpa2UgYSBjbGVhbmVyIHdheSB0byBzdG9w
IHRoZSBkZXZpY2UuCj4KPiBDYWxsaW5nIHJlbW92ZSBmcm9tIHNodXRkb3duIGluIGNvcmUuYyBp
bnN0ZWFkIG9mIGR3YzMtb2Ytc2ltcGxlLmMgZG9lcyBub3QKPiBmaXggdGhlIGlzc3VlIGVpdGhl
ci4KPgo+IEl0IGhhcyBiZWVuIHRlc3RlZCBvbiB0aGUgc2FwcGhpcmUgYm9hcmQsIGEgUkszMzk5
IHBsYXRmb3JtLgo+Cj4gUmVnYXJkcywKPiAgIFZpY2Vuw6cuCj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy91c2IvZHdjMy9kd2MzLW9mLXNpbXBsZS5jIAo+IGIvZHJpdmVycy91c2IvZHdjMy9kd2Mz
LW9mLXNpbXBsZS5jCj4gaW5kZXggYmRhYzNlN2Q3YjE4Li5kNWZkNDVjNjQ5MDEgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy91c2IvZHdjMy9kd2MzLW9mLXNpbXBsZS5jCj4gKysrIGIvZHJpdmVycy91
c2IvZHdjMy9kd2MzLW9mLXNpbXBsZS5jCj4gQEAgLTEzMyw2ICsxMzMsMTEgQEAgc3RhdGljIGlu
dCBkd2MzX29mX3NpbXBsZV9yZW1vdmUoc3RydWN0IAo+IHBsYXRmb3JtX2RldmljZSAqcGRldikK
PiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZCBkd2MzX29mX3NpbXBsZV9zaHV0
ZG93bihzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICt7Cj4gKwlkd2MzX29mX3NpbXBs
ZV9yZW1vdmUocGRldik7Cj4gK30KPiArCj4gIHN0YXRpYyBpbnQgX19tYXliZV91bnVzZWQgCj4g
ZHdjM19vZl9zaW1wbGVfcnVudGltZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgewo+
ICAJc3RydWN0IGR3YzNfb2Zfc2ltcGxlCSpzaW1wbGUgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsK
PiBAQCAtMTkwLDYgKzE5NSw3IEBAIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIG9mX2R3YzNfc2lt
cGxlX21hdGNoKTsKPiAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgZHdjM19vZl9zaW1w
bGVfZHJpdmVyID0gewo+ICAJLnByb2JlCQk9IGR3YzNfb2Zfc2ltcGxlX3Byb2JlLAo+ICAJLnJl
bW92ZQkJPSBkd2MzX29mX3NpbXBsZV9yZW1vdmUsCj4gKwkuc2h1dGRvd24JPSBkd2MzX29mX3Np
bXBsZV9zaHV0ZG93biwKPiAgCS5kcml2ZXIJCT0gewo+ICAJCS5uYW1lCT0gImR3YzMtb2Ytc2lt
cGxlIiwKPiAgCQkub2ZfbWF0Y2hfdGFibGUgPSBvZl9kd2MzX3NpbXBsZV9tYXRjaCwKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
