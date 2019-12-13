Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E7911EEA7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 00:41:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BKp7yIWJTv4SnOAVgOW3sMdCVfa5iwDOvzeUXmC5Lb8=; b=TfP5e2Hoy9T7wg
	EhCPHfWK4IOfyfnAmsz0RZb9NXyf1fGpurAFzI1CK3EK/hTjU6X6JvHvAvSk5vSfF461kwLB2bFIT
	w/I1rxV2KUy94U8Hr/YYWyluVcalrIhxQDjdJEvdZphq3f/g2nuMjq8lrBMYzjZ4DJcTeVTCXX0UL
	yxbftxvFDqYfwCLIPV0VrbOIh2iDWx9iZX/bg0w5gHwkm9jE81uToCpn2cBN/dCAo8jMyu8y4edk4
	k1aIfdGpntsDb12i8eUWrYpYy6iWFEhLKEG+5T5eJeXl7EZEu2cXCxSt5DqvNoUJY1bg57TrD2I6g
	l+06Ay9Pl8h5ENVN3WRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifuYM-0008Gi-TE; Fri, 13 Dec 2019 23:40:58 +0000
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifuY9-0008GI-5k; Fri, 13 Dec 2019 23:40:46 +0000
Received: by mail-oi1-f175.google.com with SMTP id v140so2115306oie.0;
 Fri, 13 Dec 2019 15:40:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=V1Ed3iKuAEKRicl1Uhv8QMMK9/aCmbB5pf5+U5ktoAA=;
 b=lG9M/lhjDjRkYafdXeNkSKy07kXxn754CHb0VJ3aU3r00prI9XnUvirvfbiawAb4cn
 GOWoiKfuSztbKq4RLfA5wljuNQrEU58n90iI/6cWDn6GjnvCVpsC9C8are+fnU5wZXmp
 fPk3AyAo65fdCEkz8f+egilLbxbsCyQ7afgWrp5rENNdGbP/Lb7aES3xLfiltWjdVljn
 gKU6k879ZTfaojje/eYkyFnJR24kF5divD8a6Wqa43Uc0uj9eP2JSQ8ydbde+AsUNqGk
 WkJtskt5384a1xud8R4ADWy+KWrSXv9Jb/LdcxOHuNqJM2miukXxBlt9PoGHBiheAM9J
 brMw==
X-Gm-Message-State: APjAAAVJ4bdw4goi9VfBTD2x68BKJlzxoATQQSXoaqUJ8lLApRBqPfB2
 G85qj2g2+t9n2+c7W5db708r/IE=
X-Google-Smtp-Source: APXvYqz+NOAXhdTyQjzYrG1tX1ZLVPt0E11C9lVHD0ublsOoZdAE1KxyBBW1Tj/oYQr9n/u9irlxwA==
X-Received: by 2002:a05:6808:4cc:: with SMTP id
 a12mr8415822oie.115.1576280444026; 
 Fri, 13 Dec 2019 15:40:44 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i7sm3825068oib.42.2019.12.13.15.40.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 15:40:43 -0800 (PST)
Date: Fri, 13 Dec 2019 17:40:42 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 1/5] dt-bindings: hwlock: Add Realtek RTD1195 SB2
Message-ID: <20191213234042.GA9835@bogus>
References: <20191202220535.6208-1-afaerber@suse.de>
 <20191202220535.6208-2-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202220535.6208-2-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_154045_212001_D1742A0F 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.175 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.175 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Mark Rutland <mark.rutland@arm.com>,
 Cheng-Yu Lee <cylee12@realtek.com>, linux-realtek-soc@lists.infradead.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, devicetree@vger.kernel.org,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  2 Dec 2019 23:05:31 +0100, =3D?UTF-8?q?Andreas=3D20F=3DC3=3DA4rber=
?=3D wrote:
> Define a binding for Realtek RTD1195 SoC's SB2 hardware semaphore.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  .../bindings/hwlock/realtek,rtd1195-sb2-sem.yaml   | 42 ++++++++++++++++=
++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwlock/realtek,rtd1=
195-sb2-sem.yaml
> =


Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
