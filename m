Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6318C2005E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:01:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0dBsvPDsw/+1lfxrw09XiOwfY0keN4cG1XVXQWKL1ZU=; b=uOy7IwpkHTM28d
	eN/nVRmNAIx+KWmre53gt0u940Ihjseaf3GG8t8JNSkan1cDQNcPUru9QSL4w7VPvIUOcyh4qFrNC
	Ry6faNVwmHQXYaur4ztfd2J2ZaJVIYCjUBUPTTXe+9jlaNTcRlHl4g2r0Hys+yim9L4ghRthYMYVZ
	J3u8w9DB1mHM8YFRxNFyu8ouLoMZazUhW7XccRy6veJ+0tVT51iitMQrefVVeMzlAZCC1dEA4E/nH
	yjwPaMaUoYFqk+0iPt91GF17KQP5ErdyMKPLemOcrHr/Cp9YoE5Oc27GDVqd9ENBuEHocm/kzOyiF
	vGqztaE7YVSvXmQjZdow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmDpx-0003ur-32; Fri, 19 Jun 2020 10:01:29 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmDpB-0003Tp-H0
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:00:45 +0000
Received: by mail-wr1-x434.google.com with SMTP id t18so9086954wru.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 03:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Fc/ZRtpBM3g53RRJYB71TtlpBDGsdj4dTHpptXk9V+E=;
 b=Pq58WWExXZ9otcKxJf1zB/dM1leVY7SSbgW/LVaQOi3gk6exFI6lF16yZOgX+hYg5J
 XMLQjUVd2TXMggZWtEzjcETMJu6Lbs2Mts6o2T/qQzgcaipzYgJxKz8Mw81YVnf5EeSH
 BWcaKmoVslFTXJJ6JDxDb1WswUFU0B4e6HMhDGswZP5MrXGlmSPS6yuK9ZNrg5HVo2fp
 CWeamv+3M3aQ7zSorupx/AlqdBCD7x3zlJmLVOmI9L7CQg96c2Vc9AHxuE07+LYdjun9
 AMlufbf1AdLEgRvxVmK4n/DlhfjcJ127jqs3Hv/UQq0jvYrLl4gy5Q9LM0a2OvvSjN5v
 CtlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Fc/ZRtpBM3g53RRJYB71TtlpBDGsdj4dTHpptXk9V+E=;
 b=l+dxp76daFqhjDusZyOEOOF2YRnCECkl3VdXSorZzaJ2DPoweSfKF1eqwSqzNaq4FY
 tbJpu2oY2gVKVT3w62xJ7RX0+n+jBPFpiSWlQJlAijJKkatgEhJpgrsG9CZEoX57dEJU
 sKyzD46RaFKAgBbq2xzps9fDHiCyuNDiKyf3YCarNR8c5Vm7bUn7kK4bnG+VqAEAhrUD
 J8fmOkLGInWIGFOVUGxpS6t2MEPWYOYNK/pyOCxQSKwyVir7NZyhUXeE0FmvHvOJjS2S
 LlVlVqJyl68ckyJPPbQaWIkwxcxb3HOssFcARHW0kF5UHdaG6Le89s9kqOkJgEroLVQh
 AG9w==
X-Gm-Message-State: AOAM5339ie1qM6V0WcTvoDcXjiQqhIefNBl4chHz8/LILGSu8xSyl342
 cMdf9/XYvB5r4/xGmrnaqW4=
X-Google-Smtp-Source: ABdhPJwL6UxyAGf0Q7nuXdxO5omCn5QIADzsqmyfpcHKpjTIb8EsA90+xXivTVn0wF2IqQO/fHcZnA==
X-Received: by 2002:adf:f446:: with SMTP id f6mr3213092wrp.59.1592560839559;
 Fri, 19 Jun 2020 03:00:39 -0700 (PDT)
Received: from skynet.lan (90.red-88-20-62.staticip.rima-tde.net.
 [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id v6sm7164961wrf.61.2020.06.19.03.00.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 03:00:39 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: simon@fire.lp0.eu, jonas.gorski@gmail.com, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 krzk@kernel.org, gregkh@linuxfoundation.org, alcooperx@gmail.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 1/2] dt-bindings: phy: add bcm63xx-usbh bindings
Date: Fri, 19 Jun 2020 12:00:34 +0200
Message-Id: <20200619100035.4032596-2-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619100035.4032596-1-noltari@gmail.com>
References: <20200619100035.4032596-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_030042_836657_A0939571 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG9jdW1lbnQgQkNNNjN4eCBVU0JIIFBIWSBiaW5kaW5ncy4KClNpZ25lZC1vZmYtYnk6IMOBbHZh
cm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+ClJldmlld2VkLWJ5OiBGbG9y
aWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0tCiB2NTogbm8gY2hhbmdlcy4K
IHY0OiBjb25kaXRpb25hbGx5IHJlcXVpcmUgMS8yIGNsb2NrcyBhbmQgZml4IGNsb2NrL3Jlc2V0
IHZhbHVlcy4KIHYzOiBubyBjaGFuZ2VzLgogdjI6IHBoeS1jZWxscyBjaGFuZ2VkIHRvIDEuCgog
Li4uL2JpbmRpbmdzL3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbCAgIHwgODQgKysrKysr
KysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDg0IGluc2VydGlvbnMoKykKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sYmNt
NjN4eC11c2JoLXBoeS55YW1sCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxiY202M3h4LXVzYmgtcGh5LnlhbWwKbmV3IGZp
bGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5mMjY3ZGE2MTkzYTkKLS0tIC9kZXYv
bnVsbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sYmNt
NjN4eC11c2JoLXBoeS55YW1sCkBAIC0wLDAgKzEsODQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IChHUEwtMi4wIE9SIEJTRC0yLUNsYXVzZSkKKyVZQU1MIDEuMgorLS0tCiskaWQ6ICJo
dHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9waHkvYnJjbSxiY202M3h4LXVzYmgtcGh5Lnlh
bWwjIgorJHNjaGVtYTogImh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55
YW1sIyIKKwordGl0bGU6IEJDTTYzeHggVVNCSCBQSFkKKworbWFpbnRhaW5lcnM6CisgIC0gw4Fs
dmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KKworcHJvcGVydGllczoK
KyAgY29tcGF0aWJsZToKKyAgICBlbnVtOgorICAgICAgLSBicmNtLGJjbTYzMTgtdXNiaC1waHkK
KyAgICAgIC0gYnJjbSxiY202MzI4LXVzYmgtcGh5CisgICAgICAtIGJyY20sYmNtNjM1OC11c2Jo
LXBoeQorICAgICAgLSBicmNtLGJjbTYzNjItdXNiaC1waHkKKyAgICAgIC0gYnJjbSxiY202MzY4
LXVzYmgtcGh5CisgICAgICAtIGJyY20sYmNtNjMyNjgtdXNiaC1waHkKKworICByZWc6CisgICAg
bWF4SXRlbXM6IDEKKworICBjbG9ja3M6CisgICAgbWF4SXRlbXM6IDEKKworICBjbG9jay1uYW1l
czoKKyAgICBjb25zdDogdXNiaAorCisgIHJlc2V0czoKKyAgICBtYXhJdGVtczogMQorCisgICIj
cGh5LWNlbGxzIjoKKyAgICBjb25zdDogMQorCityZXF1aXJlZDoKKyAgLSBjb21wYXRpYmxlCisg
IC0gcmVnCisgIC0gY2xvY2tzCisgIC0gY2xvY2stbmFtZXMKKyAgLSByZXNldHMKKyAgLSAiI3Bo
eS1jZWxscyIKKworYWxsT2Y6CisgIC0gaWY6CisgICAgICBwcm9wZXJ0aWVzOgorICAgICAgICBj
b21wYXRpYmxlOgorICAgICAgICAgIGVudW06CisgICAgICAgICAgICAtIGJyY20sYmNtNjMxOC11
c2JoLXBoeQorICAgICAgICAgICAgLSBicmNtLGJjbTYzMjY4LXVzYmgtcGh5CisgICAgdGhlbjoK
KyAgICAgIHByb3BlcnRpZXM6CisgICAgICAgIGNsb2NrczoKKyAgICAgICAgICBtYXhJdGVtczog
MgorICAgICAgICBjbG9jay1uYW1lczoKKyAgICAgICAgICBpdGVtczoKKyAgICAgICAgICAgIC0g
Y29uc3Q6IHVzYmgKKyAgICAgICAgICAgIC0gY29uc3Q6IHVzYl9yZWYKKyAgLSBpZjoKKyAgICAg
IHByb3BlcnRpZXM6CisgICAgICAgIGNvbXBhdGlibGU6CisgICAgICAgICAgZW51bToKKyAgICAg
ICAgICAgIC0gYnJjbSxiY202MzE4LXVzYmgtcGh5CisgICAgICAgICAgICAtIGJyY20sYmNtNjMy
OC11c2JoLXBoeQorICAgICAgICAgICAgLSBicmNtLGJjbTYzNjItdXNiaC1waHkKKyAgICAgICAg
ICAgIC0gYnJjbSxiY202MzI2OC11c2JoLXBoeQorICAgIHRoZW46CisgICAgICBwcm9wZXJ0aWVz
OgorICAgICAgICBwb3dlci1kb21haW5zOgorICAgICAgICAgIG1heEl0ZW1zOiAxCisgICAgICBy
ZXF1aXJlZDoKKyAgICAgICAgLSBwb3dlci1kb21haW5zCisKK2V4YW1wbGVzOgorICAtIHwKKyAg
ICB1c2JoOiB1c2ItcGh5QDEwMDAxNzAwIHsKKyAgICAgIGNvbXBhdGlibGUgPSAiYnJjbSxiY202
MzY4LXVzYmgtcGh5IjsKKyAgICAgIHJlZyA9IDwweDEwMDAxNzAwIDB4Mzg+OworICAgICAgY2xv
Y2tzID0gPCZwZXJpcGhfY2xrIDE1PjsKKyAgICAgIGNsb2NrLW5hbWVzID0gInVzYmgiOworICAg
ICAgcmVzZXRzID0gPCZwZXJpcGhfcnN0IDEyPjsKKyAgICAgICNwaHktY2VsbHMgPSA8MT47Cisg
ICAgfTsKLS0gCjIuMjcuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
