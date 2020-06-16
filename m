Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E5B1FB1CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:16:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FzuupAUj7uKV+QiEVJMQubLa36h7CsTKeX56TTvAfDA=; b=PhGSne0ZtDCJRY
	jLfchPv7sPS8Q9QgbZWEy0z+q6Q08xyC4nczJb4e6HXRuL4fs83+qVvM3gTOf4jezl3NTfk1s2Xsm
	Z/kZzYZw7Vv2YqaJzqgAeyXtY5QRQdFWZXFAka5Vl0sukG0i60xxjr9oJkJ2+GQvnJyVyr0SPt3V4
	MrXhvcDNTrIaQDuHknXkqiqMEYA1g+cWeRGRB7hp8hZ/0YLN6HAl6wnEbiBLUtJhV7o5dJrRwHFLR
	RRM9bwCwAPq3aoH7+kW25SiYiGNibaZXY7+AXjhG6wAgfLS++iH0moWvAHPsR8evscJDeHuWIpYyK
	jx7Mask6NKwgCentd6vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlBRr-0002yF-IX; Tue, 16 Jun 2020 13:16:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlBRj-0002xa-Mu
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:16:13 +0000
Received: by mail-wm1-x342.google.com with SMTP id t194so3021703wmt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=9NeQqiMAuFvxtrOzPp09+0hkReargQ3L4b3prwQqFWs=;
 b=lMyV++gPByIjhuuvn2wsK/E6klL79fbVx4ACxXxrHnu5At/8lS+6vpLTCO+WumvCb1
 Btd4DCv1THnwBCG4id7qSDcH0KTr8RGBM5STEozGGKPTVPzbXhsaJf5fGrSIgHEBynR6
 osWj5fyj4mQ1L5xGJVdkwJbuY4v1377rcu5Jq4sLk6859fcrU2fks+W6cDGJWjiN+naa
 qPVu58rW8dbILiK6yl0uJWaPVKLFH5WStAXktelK95uejdkKJQce6ZH8lDI9q1TvmM+g
 MmMS8mqTXaWgdtojc8ytx09R4ArfAHysepVCuNQwQfD/38aR+4SbqhONnPt16lRyzEFp
 8SJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=9NeQqiMAuFvxtrOzPp09+0hkReargQ3L4b3prwQqFWs=;
 b=BKvw6N45xlE3MUa/Cd5CH3OgI6BnUnqFjJ53OM0lym4xHVAUifC2mXOTQYKAQj1+OR
 hVxvtUI63jB9wZ+tf0K4feHyqyU9XIKkf9RrZaN6vQvmrHM9cYjr5aPMsGdEOL0XbZ31
 ryM8ZhTmdPmZAr6uN+aP2DwFzmKuPEJqFJMn11p1YDqykEAAwiUVj6d1XH0jsrC8wyDu
 nko4fSYeitd4bdf2cChy6zoCN3dHLsRA8DQrmOCuVtB19yDu6WCeigwE21QcZ2n5em8K
 qKmArXLcZcUmqvDHOwfwRYqScA24mLyGGyifqiEZSz4ntFD8ZR4pUOD1nHFI1trE3Ria
 QtEw==
X-Gm-Message-State: AOAM53332CcA4ITTxhNJPr2m514WLnqn1m4F3jrRmOt2ynnYmAapA5sH
 QLiyyICePh2fLr2BCYMp4ZAhSg==
X-Google-Smtp-Source: ABdhPJxXm+YEBOebjFL0T7eNx99jr7/JaArOdawU3v9M4AnaQqFhb5wqOc3kZdhNeoyRmtq7vpK93Q==
X-Received: by 2002:a1c:541d:: with SMTP id i29mr3214543wmb.73.1592313369700; 
 Tue, 16 Jun 2020 06:16:09 -0700 (PDT)
Received: from dell ([109.180.115.156])
 by smtp.gmail.com with ESMTPSA id d2sm29670942wrs.95.2020.06.16.06.16.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:16:08 -0700 (PDT)
Date: Tue, 16 Jun 2020 14:16:07 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH] dt-bindings: mfd: Add bindings for the Mediatek MT6360
 PMIC
Message-ID: <20200616131607.GQ2608702@dell>
References: <1592306876-3504-1-git-send-email-gene.chen.richtek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1592306876-3504-1-git-send-email-gene.chen.richtek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_061611_750478_B6AA8339 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: gene_chen@richtek.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, cy_huang@richtek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxNiBKdW4gMjAyMCwgR2VuZSBDaGVuIHdyb3RlOgoKPiBGcm9tOiBHZW5lIENoZW4g
PGdlbmVfY2hlbkByaWNodGVrLmNvbT4KPiAKPiBBZGQgZGV2aWNldHJlZSBiaW5kaW5nIGRvY3Vt
ZW50IHN1cHBvcnQgTWVkaWF0ZWsgTVQ2MzYwIFBNSUMKClRoaXMgc2hvdWxkIGhhdmUgYmVlbiBz
dWJtaXR0ZWQgd2l0aCB0aGUgZHJpdmVyLgoKPiBTaWduZWQtb2ZmLWJ5OiBHZW5lIENoZW4gPGdl
bmVfY2hlbkByaWNodGVrLmNvbT4KPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL21mZC9tdDYzNjAudHh0IHwgNTMgKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA1MyBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL210NjM2MC50eHQKPiAKPiBkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9tdDYzNjAudHh0IGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9tdDYzNjAudHh0Cj4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwLi5lMjViNWM2Cj4gLS0tIC9kZXYvbnVsbAo+
ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvbXQ2MzYwLnR4dAo+
IEBAIC0wLDAgKzEsNTMgQEAKPiArTWVkaWFUZWsgTVQ2MzYwIE11bHRpZnVuY3Rpb24gRGV2aWNl
IERyaXZlcgoKTm8gc3VjaCB0aGluZyBhcyBhbiBNRkQgKHdlIG1hZGUgaXQgdXAhKS4KClBsZWFz
ZSBkZXNjcmliZSB0aGUgZGV2aWNlLgoKPiArTVQ2MzYwIGlzIGEgbXVsdGlmdW5jdGlvbiBkZXZp
Y2Ugd2l0aCB0aGUgZm9sbG93aW5nIHN1YiBtb2R1bGVzOgoKQXMgYWJvdmUuICBNRkQgaXMgYSBM
aW51eGlzdW0gd2hpY2ggaXMgbm90IGFsbG93ZWQgaW4gRFQuCgo+ICstIEFEQwo+ICstIEJhdHRl
cnkgQ2hhcmdlci9PVEcgYm9vc3QKPiArLSBGbGFzaCBMRUQvUkdCIExFRC9tb29ubGlnaHQgTEVE
Cj4gKy0gMi1jaGFubmVsIEJ1Y2sKPiArLSA2LWNoYW5uZWwgTERPCj4gKy0gVVNCX1BECj4gKwo+
ICtJdCBpcyBpbnRlcmZhY2VkIHRvIGhvc3QgY29udHJvbGxlciB1c2luZyBJMkMgaW50ZXJmYWNl
Lgo+ICtUaGlzIGRvY3VtZW50IGRlc2NyaWJlcyB0aGUgYmluZGluZyBmb3IgTUZEIGRldmljZSBh
bmQgaXRzIHN1YiBtb2R1bGUuCgpBcyBhYm92ZS4gIFRoaXMgc2VudGVuY2Ugc2hvdWxkIGJlIGF0
IHRoZSB0b3AgaW4gYW55IGNhc2UuCgo+ICtSZXF1aXJlZCBwcm9wZXJ0aWVzOgo+ICstIGNvbXBh
dGlibGU6CU11c3QgYmUgIm1lZGlhdGVrLG10NjM2MF9wbXUiCgpObyAnXydzIGluIERULgoKPiAr
LSByZWc6CQkJU3BlY2lmaWVzIHRoZSBJMkMgc2xhdmUgYWRkcmVzcyBvZiBQTUlDIGJsb2NrLCBN
dXN0IGJlIDwweDM0Pgo+ICstIGludGVycnVwdHM6CUkyQyBkZXZpY2UgSVJRIGxpbmUgY29ubmVj
dGVkIHRvIHRoZSBtYWluIFNvQy4KPiArCj4gK09wdGlvbmFsIHN1Ym5vZGVzOgo+ICstIEFEQwo+
ICsJUmVxdWlyZWQgcHJvcGVydGllczoKPiArCQktIGNvbXBhdGlibGU6ICJtZWRpYXRlayxtdDYz
NjBfYWRjIgo+ICstIGJhdHRlcnkgY2hhcmdlci9PVEcgYm9vc3QKPiArCVJlcXVpcmVkIHByb3Bl
cnRpZXM6Cj4gKwkJLSBjb21wYXRpYmxlOiAibWVkaWF0ZWssbXQ2MzYwX2NoZyIKPiArLSBGbGFz
aCBMRUQvUkdCIExFRC9tb29ubGlnaHQgTEVECj4gKwlSZXF1aXJlZCBwcm9wZXJ0aWVzOgo+ICsJ
CS0gY29tcGF0aWJsZTogIm1lZGlhdGVrLG10NjM2MF9sZWQiCj4gKy0gMi1jaGFubmVsIEJ1Y2sK
PiArCVJlcXVpcmVkIHByb3BlcnRpZXM6Cj4gKwkJLSBjb21wYXRpYmxlOiAibWVkaWF0ZWssbXQ2
MzYwX3BtaWMiCj4gKy0gNi1jaGFubmVsIExETwo+ICsJUmVxdWlyZWQgcHJvcGVydGllczoKPiAr
CQktIGNvbXBhdGlibGU6ICJtZWRpYXRlayxtdDYzNjBfbGRvIgo+ICstIFVTQl9QRAo+ICsJUmVx
dWlyZWQgcHJvcGVydGllczoKPiArCQktIGNvbXBhdGlibGU6ICJtZWRpYXRlayxtdDYzNjBfdGNw
YyIKCk5vICdfJ3MuICBNdXN0IGJlICctJy4KCj4gK0V4YW1wbGU6Cj4gKwo+ICsJI2luY2x1ZGUg
PGR0LWJpbmRpbmdzL3VzYi9wZC5oPgo+ICsKPiArCXBtdTogbXQ2MzYwX3BtdUAzNCB7Cj4gKwkJ
c3RhdHVzID0gIm9rIjsKCiJva2F5IiBpcyBtb3JlIGNvbW1vbiBJIHRoaW5rLgoKU2hvdWxkIGJl
IGF0IHRoZSBib3R0b20gaWYgbm90IG9taXR0ZWQgYWx0b2dldGhlci4KCj4gKwkJY29tcGF0aWJs
ZSA9ICJtZWRpYXRlayxtdDYzNjBfcG11IjsKPiArCQlyZWcgPSA8MHgzND47Cj4gKwkJd2FrZXVw
LXNvdXJjZTsKPiArCQlpbnRlcnJ1cHRzLWV4dGVuZGVkID0gPCZncGlvMjYgMCBJUlFfVFlQRV9M
RVZFTF9MT1c+Owo+ICsJCWludGVycnVwdC1uYW1lcyA9ICJJUlFCIjsKPiArCQlpbnRlcnJ1cHQt
Y29udHJvbGxlcjsKPiArCQkjaW50ZXJydXB0LWNlbGxzID0gPDI+Owo+ICsJfTsKPiArCgotLSAK
TGVlIEpvbmVzIFvmnY7nkLzmlq9dClNlbmlvciBUZWNobmljYWwgTGVhZCAtIERldmVsb3BlciBT
ZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQXJtIFNvQ3MK
Rm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
