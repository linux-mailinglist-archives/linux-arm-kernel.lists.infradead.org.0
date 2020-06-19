Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DD720045F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:52:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wLXbkrz/nYi8x5ABtUhreoaKbRwlEpqNfLKE/kucF+I=; b=q1PqvucL7x6d3a
	uCVgB3T1K1qYovKO+bKT/GQ4QVeK4OUj0o7K4MRSinv7jQA21EnAwlNevIJbkX+M6g3r1lMYyuJY8
	Irmnbm5DqfUAOrgz8Mp3y5fR5l9rbu7yWi+fdRVhc9b3ntI9h4lxzFnlWJfYQYexDU4SamdxM3Mlj
	5Jg5Cg5qup8QLdHW7ikObOAMROrhfNEg9X2sYeAf95MYSaZXVRmP+mIh6WxqFfxLKTHu9TsYMN4/s
	4YljmC0RsLcX9Qr27abBovETv+C2gjr0Zh9Ca+YA0im26u0PohXvVMmt134MI68xUG+D7aZMlvxgF
	qrLPEe0ENutIiH0WN8Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCkg-0001mL-DL; Fri, 19 Jun 2020 08:51:58 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCkE-0001cS-G0
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 08:51:31 +0000
Received: by mail-wm1-x342.google.com with SMTP id d128so8356534wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 01:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5lYDT1B7WUmMqVaT2wEKNALKzv72VR3G8K7qQi7KpNc=;
 b=bk2JvxyenU4aqD+qkVUo1kyOnr4HZYghoi/oZwkhdA1oHIyoZESvA2LVi+7xdBglgJ
 m42rvCdivK25aY3PApEVHAf5iWBf8wudN99ciDen9GpDPu/6/+812uVftiOLKh1h+8gb
 zmMsYjZOh8l+jk1p+kl5G9ebet3lPF7bjlcgmyKjnpFplPQXFIW0MzP9PllONzi1iByc
 ChNlfVbpkl1XbRAexbzZOkpgoY00odPjTi8RsUOmJPQ1rJunvM0mxlbFHEXUhpdYxubj
 GgM4ptHd74XJl6ipgiRp0Go1vd6stu0h+B90SEkxlzVoog24WYRgME+5iHiyH6f+e/qY
 wTfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5lYDT1B7WUmMqVaT2wEKNALKzv72VR3G8K7qQi7KpNc=;
 b=VeRZdQImuFZdmESP7ydf7xjItv7A9ISbp3/IqYfqZVOPnSkk54T6NSQJCTLvqRFHz+
 C9b7WkSCesnis4Bk1odzLXVO0kVHxfX0yLtOlbVIgE9o99+vfJ+PCTCC9ygSBrqRLSHt
 M1zKXgMgjgvXfAZk8bCG9yE8iL3yphsjxlsq/VDbhFsQEIspPHQoMRXysodPmUkKSGm3
 5m79BZXaWPQtohGs4OD6tesfDBdibrrT6iSVWP97Qyz/9VeQb2ZIjmCH0UwXxeStQfm2
 wDUW4e3rkIlkmd1UdhMzLJ/A6j/y0ACJm+sx75YXuHf+jrylIGE3oeYZ+xOY00gKJira
 /OOg==
X-Gm-Message-State: AOAM531spJHmGUYy2Q4sCGs2+kH/1P66oGeUa+oMPFfrjZ3Xjd7G7htj
 9cvFg62z6mx2aam7/pJxeeg=
X-Google-Smtp-Source: ABdhPJzKu4g2eBDhQtkA5czepSMMz6BLGgq2khE3gPGgX1q6t+nmren5zX6ZtXSQWmUUXG7HorRxCg==
X-Received: by 2002:a1c:5603:: with SMTP id k3mr2684984wmb.116.1592556688888; 
 Fri, 19 Jun 2020 01:51:28 -0700 (PDT)
Received: from skynet.lan (90.red-88-20-62.staticip.rima-tde.net.
 [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id l1sm6674331wrb.31.2020.06.19.01.51.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 01:51:28 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: simon@fire.lp0.eu, jonas.gorski@gmail.com, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 krzk@kernel.org, gregkh@linuxfoundation.org, alcooperx@gmail.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/2] dt-bindings: phy: add bcm63xx-usbh bindings
Date: Fri, 19 Jun 2020 10:51:23 +0200
Message-Id: <20200619085124.4029400-2-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619085124.4029400-1-noltari@gmail.com>
References: <20200619085124.4029400-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_015130_531748_F8BCC94F 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
aWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0tCiB2NDogY29uZGl0aW9uYWxs
eSByZXF1aXJlIDEvMiBjbG9ja3MgYW5kIGZpeCBjbG9jay9yZXNldCB2YWx1ZXMKIHYzOiBubyBj
aGFuZ2VzCiB2MjogcGh5LWNlbGxzIGNoYW5nZWQgdG8gMS4KCiAuLi4vYmluZGluZ3MvcGh5L2Jy
Y20sYmNtNjN4eC11c2JoLXBoeS55YW1sICAgfCA4NCArKysrKysrKysrKysrKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgODQgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxiY202M3h4LXVzYmgtcGh5LnlhbWwK
CmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20s
YmNtNjN4eC11c2JoLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRl
eCAwMDAwMDAwMDAwMDAuLmYyNjdkYTYxOTNhOQotLS0gL2Rldi9udWxsCisrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxiY202M3h4LXVzYmgtcGh5LnlhbWwK
QEAgLTAsMCArMSw4NCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1Ig
QlNELTItQ2xhdXNlKQorJVlBTUwgMS4yCistLS0KKyRpZDogImh0dHA6Ly9kZXZpY2V0cmVlLm9y
Zy9zY2hlbWFzL3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbCMiCiskc2NoZW1hOiAiaHR0
cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjIgorCit0aXRsZTogQkNN
NjN4eCBVU0JIIFBIWQorCittYWludGFpbmVyczoKKyAgLSDDgWx2YXJvIEZlcm7DoW5kZXogUm9q
YXMgPG5vbHRhcmlAZ21haWwuY29tPgorCitwcm9wZXJ0aWVzOgorICBjb21wYXRpYmxlOgorICAg
IGVudW06CisgICAgICAtIGJyY20sYmNtNjMxOC11c2JoLXBoeQorICAgICAgLSBicmNtLGJjbTYz
MjgtdXNiaC1waHkKKyAgICAgIC0gYnJjbSxiY202MzU4LXVzYmgtcGh5CisgICAgICAtIGJyY20s
YmNtNjM2Mi11c2JoLXBoeQorICAgICAgLSBicmNtLGJjbTYzNjgtdXNiaC1waHkKKyAgICAgIC0g
YnJjbSxiY202MzI2OC11c2JoLXBoeQorCisgIHJlZzoKKyAgICBtYXhJdGVtczogMQorCisgIGNs
b2NrczoKKyAgICBtYXhJdGVtczogMQorCisgIGNsb2NrLW5hbWVzOgorICAgIGNvbnN0OiB1c2Jo
CisKKyAgcmVzZXRzOgorICAgIG1heEl0ZW1zOiAxCisKKyAgIiNwaHktY2VsbHMiOgorICAgIGNv
bnN0OiAxCisKK3JlcXVpcmVkOgorICAtIGNvbXBhdGlibGUKKyAgLSByZWcKKyAgLSBjbG9ja3MK
KyAgLSBjbG9jay1uYW1lcworICAtIHJlc2V0cworICAtICIjcGh5LWNlbGxzIgorCithbGxPZjoK
KyAgLSBpZjoKKyAgICAgIHByb3BlcnRpZXM6CisgICAgICAgIGNvbXBhdGlibGU6CisgICAgICAg
ICAgZW51bToKKyAgICAgICAgICAgIC0gYnJjbSxiY202MzE4LXVzYmgtcGh5CisgICAgICAgICAg
ICAtIGJyY20sYmNtNjMyNjgtdXNiaC1waHkKKyAgICB0aGVuOgorICAgICAgcHJvcGVydGllczoK
KyAgICAgICAgY2xvY2tzOgorICAgICAgICAgIG1heEl0ZW1zOiAyCisgICAgICAgIGNsb2NrLW5h
bWVzOgorICAgICAgICAgIGl0ZW1zOgorICAgICAgICAgICAgLSBjb25zdDogdXNiaAorICAgICAg
ICAgICAgLSBjb25zdDogdXNiX3JlZgorICAtIGlmOgorICAgICAgcHJvcGVydGllczoKKyAgICAg
ICAgY29tcGF0aWJsZToKKyAgICAgICAgICBlbnVtOgorICAgICAgICAgICAgLSBicmNtLGJjbTYz
MTgtdXNiaC1waHkKKyAgICAgICAgICAgIC0gYnJjbSxiY202MzI4LXVzYmgtcGh5CisgICAgICAg
ICAgICAtIGJyY20sYmNtNjM2Mi11c2JoLXBoeQorICAgICAgICAgICAgLSBicmNtLGJjbTYzMjY4
LXVzYmgtcGh5CisgICAgdGhlbjoKKyAgICAgIHByb3BlcnRpZXM6CisgICAgICAgIHBvd2VyLWRv
bWFpbnM6CisgICAgICAgICAgbWF4SXRlbXM6IDEKKyAgICAgIHJlcXVpcmVkOgorICAgICAgICAt
IHBvd2VyLWRvbWFpbnMKKworZXhhbXBsZXM6CisgIC0gfAorICAgIHVzYmg6IHVzYi1waHlAMTAw
MDE3MDAgeworICAgICAgY29tcGF0aWJsZSA9ICJicmNtLGJjbTYzNjgtdXNiaC1waHkiOworICAg
ICAgcmVnID0gPDB4MTAwMDE3MDAgMHgzOD47CisgICAgICBjbG9ja3MgPSA8JnBlcmlwaF9jbGsg
MTU+OworICAgICAgY2xvY2stbmFtZXMgPSAidXNiaCI7CisgICAgICByZXNldHMgPSA8JnBlcmlw
aF9yc3QgMTI+OworICAgICAgI3BoeS1jZWxscyA9IDwxPjsKKyAgICB9OwotLSAKMi4yNy4wCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
