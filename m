Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AD11FAB5C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 10:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Con2CL3pNyjheWIn9Oczuo9YUE6SDpfC+SVPWd05w4=; b=aYSRmLGlWI9Iae
	Q+30hsfiUD3VQvQk4G+s3bEHoB6vWob+4jaavsN/jZymRpTnsuA/zZgjWp6FiWPiUQPbjPx6NJW4o
	8A4U7N4YM9AEzYOIYs4V4o7i+Ka2jeuKmvCFo+sV3tekEeJDQmTGsgPGgrAZ2i4JIIo9p2gGyWegM
	UgaasezMMzH0RAsBWlgeWUbVIEpgrf8sP5VhsWrVFrPIi2OdV47FrqPuFB3zAbbKwItw3kG8Fk/JC
	Zbn8pw2MLWnGwRfUKJJmVI5gi8JpQfsVv3Me2tJMYTbZcp6b6mUTYau8Pl6+Bo1dD/VfUK0zrC6/p
	JfWb1HqcDxgMB8A0GMiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl73H-0001Hq-6J; Tue, 16 Jun 2020 08:34:39 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl72r-00016L-21
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 08:34:14 +0000
Received: by mail-wr1-x430.google.com with SMTP id h5so19833008wrc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 01:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wvcpsuXcW9VNFl6uXhkfn7k7tErP7EAuCbtAVgP08DY=;
 b=eKNxEDg4kFcaZQIYB8OMYabj3dRfW6ebgoM3CIL/XF9nUW5TgSHDgSSNMKY3UYwtyW
 u19vQezA0aFVWemjhnnRihJhcoZ53OGOnoXXp9DoKXYkZCtIlP6nAnTW1bXM+9B0CC0b
 wCyZmQl9nKG8euyfbniidTkwAxW6HgUyrCYzJb8DX2BIJ+6QIWOD4nRcn9bxrzF+i6Gy
 Oxkicviin5NZDDJcMR8V8/f7WGQcOcP18TW/5aNoTjpbeKN8Cr1nnWf1Y8k8zXaaQGX2
 3JmdeeIFqonNdJW0s2nHKdNmEaX4wJYfOqwEA1QD89e4Ua+H+cExAr1jpHUBrwusvrif
 XPzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wvcpsuXcW9VNFl6uXhkfn7k7tErP7EAuCbtAVgP08DY=;
 b=kYgv6ch717ubziPpnudskveQ2MdLRpbGG2nS+QyPRjmxK2O2M7HRBYj5mQLplIFhh/
 klqpBDs+tTAd4mGI9U68T5ex+3desm44YMm3YOsbfqG6oBl3QO8h4KSd7SoK9b62qV61
 ZDy+KmF7tpPeyXiZQy6UB7fKozLoy3H5DSbxxbb+9UJ7Km23XNSQMXv2mp0ztBPt1qta
 vyib2opud7LcLdHJrb3BR+D8icZGd8ESvSzaWmBZdIBcdHzb4aOUntUXP6ULLM9ZFJJI
 qKwde9k1aBVuG4L7PUrIsxbxVgqEYicyVIanZGBcfKGfghqpCh0ku5RKI+GaSTnNkCAi
 UN4A==
X-Gm-Message-State: AOAM533Ahh+K6PmALERLVOf205VxnrayT4Rk5quccsDYn1GdsoAe8FOo
 qG7O3i8Uo1RKU9To2rs5jxE=
X-Google-Smtp-Source: ABdhPJzWWDrEko1QQTOj8SM9Ke8qvJ2AFwZtBqEQ+p2O66nPN+vKJld3AeRTdCZlU6A1pC8h2pDAMQ==
X-Received: by 2002:adf:f8cc:: with SMTP id f12mr1770425wrq.418.1592296451480; 
 Tue, 16 Jun 2020 01:34:11 -0700 (PDT)
Received: from skynet.lan (90.red-88-20-62.staticip.rima-tde.net.
 [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id s18sm34318981wra.85.2020.06.16.01.34.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 01:34:11 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: simon@fire.lp0.eu, jonas.gorski@gmail.com, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 krzk@kernel.org, gregkh@linuxfoundation.org, alcooperx@gmail.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: phy: add bcm63xx-usbh bindings
Date: Tue, 16 Jun 2020 10:34:07 +0200
Message-Id: <20200616083408.3426435-2-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200616083408.3426435-1-noltari@gmail.com>
References: <20200616083408.3426435-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_013413_098346_10C03824 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG9jdW1lbnQgQkNNNjN4eCBVU0JIIFBIWSBiaW5kaW5ncy4KClNpZ25lZC1vZmYtYnk6IMOBbHZh
cm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Ci0tLQogLi4uL2JpbmRpbmdz
L3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbCAgIHwgNzIgKysrKysrKysrKysrKysrKysr
KwogMSBmaWxlIGNoYW5nZWQsIDcyIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sYmNtNjN4eC11c2JoLXBo
eS55YW1sCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvYnJjbSxiY202M3h4LXVzYmgtcGh5LnlhbWwKbmV3IGZpbGUgbW9kZSAxMDA2
NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4zZTdjOTc3OTliOTEKLS0tIC9kZXYvbnVsbAorKysgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sYmNtNjN4eC11c2JoLXBo
eS55YW1sCkBAIC0wLDAgKzEsNzIgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwt
Mi4wIE9SIEJTRC0yLUNsYXVzZSkKKyVZQU1MIDEuMgorLS0tCiskaWQ6ICJodHRwOi8vZGV2aWNl
dHJlZS5vcmcvc2NoZW1hcy9waHkvYnJjbSxiY202M3h4LXVzYmgtcGh5LnlhbWwjIgorJHNjaGVt
YTogImh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIyIKKwordGl0
bGU6IEJDTTYzeHggVVNCSCBQSFkKKworbWFpbnRhaW5lcnM6CisgIC0gw4FsdmFybyBGZXJuw6Fu
ZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KKworcHJvcGVydGllczoKKyAgY29tcGF0aWJs
ZToKKyAgICBlbnVtOgorICAgICAgLSBicmNtLGJjbTYzMTgtdXNiaC1waHkKKyAgICAgIC0gYnJj
bSxiY202MzI4LXVzYmgtcGh5CisgICAgICAtIGJyY20sYmNtNjM1OC11c2JoLXBoeQorICAgICAg
LSBicmNtLGJjbTYzNjItdXNiaC1waHkKKyAgICAgIC0gYnJjbSxiY202MzY4LXVzYmgtcGh5Cisg
ICAgICAtIGJyY20sYmNtNjMyNjgtdXNiaC1waHkKKworICByZWc6CisgICAgbWF4SXRlbXM6IDEK
KworICBjbG9ja3M6CisgICAgbWF4SXRlbXM6IDIKKworICBjbG9jay1uYW1lczoKKyAgICBpdGVt
czoKKyAgICAgIC0gY29uc3Q6IHVzYmgKKyAgICAgIC0gY29uc3Q6IHVzYl9yZWYKKworICByZXNl
dHM6CisgICAgbWF4SXRlbXM6IDEKKworICAiI3BoeS1jZWxscyI6CisgICAgY29uc3Q6IDAKKwor
cmVxdWlyZWQ6CisgIC0gY29tcGF0aWJsZQorICAtIHJlZworICAtIGNsb2NrcworICAtIGNsb2Nr
LW5hbWVzCisgIC0gcmVzZXRzCisgIC0gIiNwaHktY2VsbHMiCisKK2lmOgorICBwcm9wZXJ0aWVz
OgorICAgIGNvbXBhdGlibGU6CisgICAgICBlbnVtOgorICAgICAgICAtIGJyY20sYmNtNjMxOC11
c2JoLXBoeQorICAgICAgICAtIGJyY20sYmNtNjMyOC11c2JoLXBoeQorICAgICAgICAtIGJyY20s
YmNtNjM2Mi11c2JoLXBoeQorICAgICAgICAtIGJyY20sYmNtNjMyNjgtdXNiaC1waHkKKwordGhl
bjoKKyAgcHJvcGVydGllczoKKyAgICBwb3dlci1kb21haW5zOgorICAgICAgbWF4SXRlbXM6IDEK
KyAgcmVxdWlyZWQ6CisgICAgLSBwb3dlci1kb21haW5zCisKK2V4YW1wbGVzOgorICAtIHwKKyAg
ICB1c2JoOiB1c2ItcGh5QDEwMDAxNzAwIHsKKyAgICAgIGNvbXBhdGlibGUgPSAiYnJjbSxiY202
MzY4LXVzYmgtcGh5IjsKKyAgICAgIHJlZyA9IDwweDEwMDAxNzAwIDB4Mzg+OworICAgICAgY2xv
Y2tzID0gPCZwZXJpcGhfY2xrIEJDTTYzNjhfQ0xLX1VTQkg+OworICAgICAgY2xvY2stbmFtZXMg
PSAidXNiaCI7CisgICAgICByZXNldHMgPSA8JnBlcmlwaF9yc3QgQkNNNjM2OF9SU1RfVVNCSD47
CisgICAgICAjcGh5LWNlbGxzID0gPDA+OworICAgIH07Ci0tIAoyLjI3LjAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
