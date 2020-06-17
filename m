Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8A31FD785
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 23:38:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XjHKE5YsOn8D60wET8wZE/oYMcEKkjG+73/qOMrAyhI=; b=IY/2CtZ9Cg+6hH2wBIlLBhramF
	pUe1YFyug+8mMuxOnE55W+JlnSvLs1Lxx6GNvYGsI1nhW7YLm9tLlRLgOB4oHlwK+vzjZxR6LfBQ7
	cxcGOJjBtn6rBB0xHkfANHbqVGLQTsBLVdwunTMhTaM63k8rb1fAveQAL1xdwDGAVboCwHmC87kHU
	CPEnpRyoK76e+tHAxdL+73lltnQcnwTex+V9HDUBfRirrHn9EwVODCdIMoF5WBX1RXrUtinU9dwZB
	20dfjN2v6byeSFs/yJDrHeL/I29fiWCyqUUVrTM4eCBzgAa/qaLucPi6nOpS0vmtiwRwmfwsFKqZB
	3z9khQKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfl4-000339-MR; Wed, 17 Jun 2020 21:38:10 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlfkv-00031N-DZ
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 21:38:02 +0000
Received: by mail-pl1-x643.google.com with SMTP id d8so1524400plo.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 14:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=HhE6cuq1S6m9mA3V80JeAQUXPVB+qHlwzWqr6geaGME=;
 b=kH6VJBfTLpiu8T3AXlhQO6i0Uzd+L3yg5deK1pM4pCsLfptouhYEUDRbEiD4dP4M2B
 RDz5C37SP+TkKFlg646bJebX94mjRVdY0Xie5Ydtt7ZljoIyBanS3Dz4w6S1+71Q9dUD
 XnTW35gMpozJoNl8h6T4nYkGOLb5BWR8VPptACBP9XEXkTvfII4J6/rYovDdbB3o1H6D
 UW6QCmag4DNahHqmpnU+h1q9JIq8PYXtYkaLJ8mncwfbpOtoeLvs0VTnPeo/GmraUAkS
 CmiDsN5e7EtiYrw4bboRC7TWghwX2ETE6cp78PJcXWmKcP0uMHSaSPYVp3zFRBDya1sz
 xE/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HhE6cuq1S6m9mA3V80JeAQUXPVB+qHlwzWqr6geaGME=;
 b=gwa2tGjKmWBWAADCeojtEEoSm376Rp5ffPCMMB8ppsoMJAT1fjbS/k/eBoVFVNBdf+
 X17q+CKtYYX9mUUkIEXEFBSDrnpvQD7UR8LbZjcI6YPD8zoYMJ4QYjxd7Ht74AcBaz1W
 sC/yVzbY9GGX2GDysBeQiOOiyOZvP+sWQd2BKeUDc2s3p8hbeLQIKQN47YTcydbJw4uT
 5hMvWJEDIeRFjw4sXAiC+gbER8feO2jNXuZ005J2wy4HScIiY/7Ixvf3zb63V0KmSVh3
 YJ7R+Y+8noKnntOBIyKprgGafSGqqsZ8skZHbhO+jM4P4IIgQu2pK0ZCQE8Mmx2CURcv
 gLIw==
X-Gm-Message-State: AOAM533MadSWgw8K2DrSMSJlA9yjbyomv9P5oi5R7dZdv8EPUwhwkRjJ
 hJK2gI1rp88QmALE/WWnNNNdIL9k
X-Google-Smtp-Source: ABdhPJxZiMiMtOOpkeEGSVRsRKNB3WUfSvLd60nyexgUp1AoeymU5+LVS2npr6l3xowEHQJ+nSiMDg==
X-Received: by 2002:a17:90a:b949:: with SMTP id f9mr933406pjw.79.1592429878011; 
 Wed, 17 Jun 2020 14:37:58 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a12sm429778pjw.35.2020.06.17.14.37.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 14:37:57 -0700 (PDT)
Subject: Re: [PATCH v3 2/2] phy: bcm63xx-usbh: Add BCM63xx USBH driver
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 jonas.gorski@gmail.com, kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
 f.fainelli@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 p.zabel@pengutronix.de, krzk@kernel.org, gregkh@linuxfoundation.org,
 alcooperx@gmail.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200616184542.3504965-1-noltari@gmail.com>
 <20200616184542.3504965-3-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <947c21d8-9189-fe23-b59a-4f911b76dbe4@gmail.com>
Date: Wed, 17 Jun 2020 14:37:54 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200616184542.3504965-3-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_143801_457828_170A3F33 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzE2LzIwMjAgMTE6NDUgQU0sIMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyB3cm90ZToK
PiBBZGQgQkNNNjN4eCBVU0JIIFBIWSBkcml2ZXIgZm9yIEJNSVBTLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+CgpBcyBkaXNj
dXNzZWQgaW4gdGhlIHYyIHNlcmllcywgeW91IGFsc28gbmVlZCB0byBjb250cm9sIHRoZQpVVE1J
X0NPTlRST0wxIHJlZ2lzdGVyIGZvciBvcGVyYXRpbmcgdGhlIHBvcnQgaW4gZGV2aWNlL2hvc3Qv
b3RnIG1vZGUuCi0tCkZsb3JpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
