Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B761EB9A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 12:32:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtUFaGt7GobNLvUIrUBE2m4nz/5N5zfjopOH/eORCzc=; b=lF0PivUUzvxIv/
	oHgOKJp0IoBvrxgVNAqEt7VcQV3a4hTmdP9JuVCBJS1cXlVwRrGJed/T7bnowG0+0xgdq3nQ50XIi
	6YRzuPCOekr+xAzyflxmLhUPytpRuXDLG8+0R7Irnwmv1MthpwaCy8PUFk+3qMJGCmYcXhe4twss9
	b2PldKeH/PVPKn87CASpxHxx1QXPRQ2DMf5hn0gViBgNFY2vxBKz14N9iTuUEjZApA0Nyf84jOjzg
	X4Zq6RVkRbbGbMFZwYC0fEjNIybUb/aFgAhfisZzCEcpUxg350e+tI5G/rmi+PDgEE/3InfDiQXiK
	zYopm7luehBf/NSfulIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg4DM-0006Up-UM; Tue, 02 Jun 2020 10:32:12 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg4DG-0006U5-Eq
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 10:32:07 +0000
Received: by mail-wr1-x442.google.com with SMTP id q11so2859341wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 03:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=KlmfffW2XSbkYvsmOsNbcsmnYUo/y3iq5oHmPHdTHaQ=;
 b=ZLlypJ/CuFsSyNV3DN2Ha4SZkMHS0N96qwx4Z0cqHcCC80a08KrXccPQwaKNTCewK/
 RE71Wz6C4rgZLQKM7/9kHctlMJvVXEGDf9dUKeNKSNWbHjUWvVaWUPMdFVGqE8vkP+uI
 hgZ3N+OKKn4TXeaEKmJgQ4AXdQS3+WpwtfMNVwaPqtzomZNZzFm2bFlQKBDnvta+sXZr
 Dfm7LE3j/ujA0UsLldLyz8i7+XdWCTuNtt2KBsHjm+4a62hTTI7hUiiQpciyGLA7VGmP
 E31at6jtNLz8/Q4WAh2OZHkHFHoTIRCK9KohU0sVdPgeP2WRv+LTCZB4bytSO8azymqJ
 f9Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=KlmfffW2XSbkYvsmOsNbcsmnYUo/y3iq5oHmPHdTHaQ=;
 b=BavDQHaTVRQzO01dIaTBd5Lw9xTXKcqiF2IFXl0kiRC45Ix/B6jNOg+ezK9iCfgn0N
 64tXOww+HOZucY/tEbOqlC/2fOewFTiFo7xlkFslK0Dfr9k97zn/ahOxMfGhe5WUhgQi
 YuQ5BkdCf+tDod6GC2MMJqaRkacRC/vTh/qheqhPqesA2u/Miz7BUk8Lkch0hUyu0vaK
 cUnv3B5pjyDYAQS++ewosf4U0hMoz2JWAmC+0dkyr+wTrgj3D2oDIQT6yqxOo8sBWjo0
 yDSXUbj4mlVLBbVUumDVDPi0ORQE0EebSpxGmUNJzGBDo54eKcSnlc2kOy9WWVJ6/8OZ
 7yAQ==
X-Gm-Message-State: AOAM531YOXm9WUgQFvbF/Tf6SB2NGPauM8LqM2tLi++M4DnVQSnBtA0Q
 Lz7FuFHDouw1gHxGXfDKWkuG9Q==
X-Google-Smtp-Source: ABdhPJxpOB9vo7otdW0hRZv3RvFPnuX5BR632FsJOEUd2/IuCmF0m4pQLOBikVssca89fSeFvE3hIw==
X-Received: by 2002:a5d:4c45:: with SMTP id n5mr26141358wrt.341.1591093924698; 
 Tue, 02 Jun 2020 03:32:04 -0700 (PDT)
Received: from dell ([95.147.198.92])
 by smtp.gmail.com with ESMTPSA id r7sm2886185wmb.32.2020.06.02.03.32.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 03:32:03 -0700 (PDT)
Date: Tue, 2 Jun 2020 11:32:02 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH v10] mfd: mt6360: add pmic mt6360 driver
Message-ID: <20200602103202.GE3714@dell>
References: <1591070142-7653-1-git-send-email-gene.chen.richtek@gmail.com>
 <20200602082816.GC3714@dell>
 <2231bffe-27d1-6aee-4699-77d2f754beef@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2231bffe-27d1-6aee-4699-77d2f754beef@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_033206_503688_98E96AD8 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org, cy_huang@richtek.com,
 linux-mediatek@lists.infradead.org, Gene Chen <gene.chen.richtek@gmail.com>,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwMiBKdW4gMjAyMCwgTWF0dGhpYXMgQnJ1Z2dlciB3cm90ZToKCj4gCj4gCj4gT24g
MDIvMDYvMjAyMCAxMDoyOCwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gT24gVHVlLCAwMiBKdW4gMjAy
MCwgR2VuZSBDaGVuIHdyb3RlOgo+ID4gCj4gPj4gRnJvbTogR2VuZSBDaGVuIDxnZW5lX2NoZW5A
cmljaHRlay5jb20+Cj4gPj4KPiA+PiBBZGQgTUZEIGRyaXZlciBmb3IgbXQ2MzYwIHBtaWMgY2hp
cCBpbmNsdWRlIEJhdHRlcnkgQ2hhcmdlci8KPiA+PiBVU0JfUEQvRmxhc2gsIExFRC9SR0IgYW5k
IExFRC9MRE8vQnVjawo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogR2VuZSBDaGVuIDxnZW5lX2No
ZW5AcmljaHRlay5jb20+Cj4gPj4gU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNA
bGluYXJvLm9yZz4KPiA+IAo+ID4gSSBkaWQgbm90IHNpZ24gdGhpcyBvZmYuCj4gPiAKPiAKPiBZ
b3UgYXJlIHJpZ2h0LCB5b3UgcHJvdmlkZWQgeW91ciBBY2tlZC1mb3ItTUZELWJ5IGFuZCB0b29r
IGFuIGVhcmxpZXIgdmVyc2lvbiBvZgo+IHRoZSBwYXRjaCBbMV0uIEJ1dCBhcyB0aGlzIGRpZG4n
dCBzaG93IHVwIGluIGxpbnV4LW5leHQgSSBzdXBwb3NlIHlvdSBkcm9wcGVkIGl0Cj4gYWZ0ZXJ3
YXJkcyBiZWNhdXNlIG9mIGtidWlsZCB0ZXN0IGVycm9ycyAoZGVkdWNpbmcgZnJvbSB0aGUgY2hh
bmdlcyBsb2cpLgoKSWYgdGhlIGJ1aWxkZXJzIGNhbiBzZWUgaXQsIC1uZXh0IGNhbiBwdWxsIGZy
b20gaXQuCgpJdCB3YXMgbmV2ZXIgZHJvcHBlZC4KCj4gSSBzdXBwb3NlIGlmIHRoaXMgZXJyb3Jz
IGFyZSBmaXhlZCBub3csIHdlIHNob3VsZCBiZSBmaW5lIDopCgpJbmRlZWQuICBObyBtb3JlIGJ1
aWxkIGVycm9ycy4gOikKCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2Vz
IFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBB
Uk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
