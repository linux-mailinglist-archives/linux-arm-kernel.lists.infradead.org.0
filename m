Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC8A1E399F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 08:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lv/OkpavQyypb2qarv/E/OmaTRTmGHjig7JfARKpmaw=; b=ER7lUqDZZG5sXd
	AV2BxusmPKcprS/23QqWlqbRu0xZoqJKq8NGvwBC9A4oAdnVTiI7JKxeG6UFrLNhnPvt43/SHkIPi
	RoMcxHcz7do6GIHy0wLifg1Vtd2UGNcHtQgp1yfAPftvfkVFmj8og5wpZPiWnp9bZxa+vX0dTPFr5
	dTDw/RYnmlOB1+8Hj8XZlQ7LEjPd+jg6y9PxI0R+gLGe1wtYznYjZNghbJxKQ3pQTkTpL+1ejU9eN
	wEUXkh1ecw+zQ+AKx39+71RGZa2JAVGvld207/xhL/hiHkCjzgRjyRlz/OJ2SFz6YWtmqKL5UB7UW
	F64XHo6TCHw4Q3i0J9Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdpsm-0002Fm-JR; Wed, 27 May 2020 06:49:44 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdprp-0001pH-HJ
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 06:48:47 +0000
Received: by mail-wr1-x443.google.com with SMTP id j10so7241494wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 23:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=7LeU+UdXoVHvFWpsdH5qXrt3tNYpvrrAzAhZwkjADGQ=;
 b=SmaCrk1LUTHh/o2KutIjiCIhUy4p30yQHnviy8ti4ZwcaHDwd6ws2zOoJXCD1GtH3d
 bHfOzstoNYWWf7Q0flomJc9/Nz+vo3BqmAUBxCS0XMXl/rFW+XzLLki0gr7egFYM4P16
 ykY1ein2Dd/+QdRZP7Lj2vHJfNOuWhM/Hhe3V8kkLDmFgm8fI4a48i9UKy0hlQC9tDmv
 +rSsqKf89zwOk29h+O6fEh8kYjKHu7igS1L3wGnbGxpU0tu1Pr4gzG9pcwYJzVZ36Zfp
 L7LGDbBn4PknYChrdqbWJYYZ9/kDIpS7Z/A+FGhPT8UEZFhhDetJW0xIkcc668cFQHu8
 g8TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=7LeU+UdXoVHvFWpsdH5qXrt3tNYpvrrAzAhZwkjADGQ=;
 b=mKMYMCIY/wRLK/ESvcoP4KQOS7HmPEz0fRYv1OrimYgg0NEmKFgzb8Dias43TDPQDa
 R67I620Et/OHoBigzqe904EVhqrWhepGaePFWOhZJQa7j0ivdHJBgIVpZ/g0YwJT/sUL
 A2vNdQDmP+27z3WnsELpexCko4yUjrbVs8ULITrkMbN95WB4AoCYJ6O1OYp3awNZ3I85
 gStJ/PTBolgp2YaOMJgl4fNP9ifo9z9rm4bH+wlieufyVsb/ZpEfvKT8PTHpJaJlKVqC
 T4xgxCeF5XRTQrcd/MoEYNSFrk3BsDjaj3DAtNig7oXbdO2ixLMRLQQN3vxKoqSz3FTc
 lQxw==
X-Gm-Message-State: AOAM530EFORKVBjWVuxaOaLVs6lhsgH5glily53qGlu+Iy61f/6Cx0VN
 CA4AOhLaAnzrUqylrwjEqjA9fQ==
X-Google-Smtp-Source: ABdhPJzRJyz8F0b7HQ/1rq5CWl6Hbi5Qoq1hArVmbFt9djqf5RvekT+nqWLxuMM5Mz4mMLZA+HquTw==
X-Received: by 2002:adf:a157:: with SMTP id r23mr9862016wrr.92.1590562121246; 
 Tue, 26 May 2020 23:48:41 -0700 (PDT)
Received: from dell ([95.149.164.102])
 by smtp.gmail.com with ESMTPSA id j4sm1924642wrx.24.2020.05.26.23.48.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 23:48:40 -0700 (PDT)
Date: Wed, 27 May 2020 07:48:39 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH v9] mfd: mt6360: add pmic mt6360 driver
Message-ID: <20200527064839.GO3628@dell>
References: <1587641093-25441-1-git-send-email-gene.chen.richtek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587641093-25441-1-git-send-email-gene.chen.richtek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_234845_595832_24FA948D 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAyMyBBcHIgMjAyMCwgR2VuZSBDaGVuIHdyb3RlOgoKPiBBZGQgbWZkIGRyaXZlciBm
b3IgbXQ2MzYwIHBtaWMgY2hpcCBpbmNsdWRlCj4gQmF0dGVyeSBDaGFyZ2VyL1VTQl9QRC9GbGFz
aCBMRUQvUkdCIExFRC9MRE8vQnVjawoKSSBjaGFuZ2VkIHRoZSBzdWJqZWN0IGxpbmUgYW5kIGNv
bW1pdCBsb2cgYSBiaXQuCgo+IFNpZ25lZC1vZmYtYnk6IEdlbmUgQ2hlbiA8Z2VuZV9jaGVuQHJp
Y2h0ZWsuY29tPgo+IEFja2VkLWZvci1NRkQtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFy
by5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAgICAgIHwgIDEyICsrCj4gIGRy
aXZlcnMvbWZkL01ha2VmaWxlICAgICAgIHwgICAxICsKPiAgZHJpdmVycy9tZmQvbXQ2MzYwLWNv
cmUuYyAgfCA0MjUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Cj4gIGluY2x1ZGUvbGludXgvbWZkL210NjM2MC5oIHwgMjQwICsrKysrKysrKysrKysrKysrKysr
KysrKysKPiAgNCBmaWxlcyBjaGFuZ2VkLCA2NzggaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9tZmQvbXQ2MzYwLWNvcmUuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQg
aW5jbHVkZS9saW51eC9tZmQvbXQ2MzYwLmgKCkFwcGxpZWQsIHRoYW5rcy4KCi0tIApMZWUgSm9u
ZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg
4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNl
Ym9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
