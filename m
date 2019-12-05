Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1BE1146C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 19:19:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CsNGNvKYxQ51o1SwfaatXL691nPfdu1PchJ96LHHs10=; b=VcthgiFdj4FWDm
	VlwO8zWtNn10geMi6VOf7QeziwA1VYgv8KAVgaUb/KiqoxWTRGP3BoQXEJogotKVExyixEw3Q0BWA
	+UBs+eC9gQKCeVOzWrjt2+bZKWvvY348MULXy7vSinaB8lzzxRiIeQSmk//4z4b5J7HxtHhvHSAV3
	EAdfOTuP+7bEVQN0xmDd+mLbQIFbJHxdvvlo230Jf/4RxLEzkkugvwxotdBOoSNnSLE06f6janxEW
	hhXikUdKIX6eQjXqmv5+YyXqCv0UAMbix4U/e4ogIJ6DMUuT19lplOboADgjOsFMRzASYBwD6UM7/
	bK7+Xn9idIPjwMZv6alA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icviQ-00012N-Ki; Thu, 05 Dec 2019 18:19:02 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icviH-00011l-Ca
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 18:18:54 +0000
Received: by mail-oi1-f196.google.com with SMTP id i1so3624626oie.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 10:18:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=g1S0bB1B3s1eiBmGGOq4Zd2xB9ghrSQ0W48kBREdYO8=;
 b=WfEAZwuc25cGOnJczD4x5J1A5Zxyr3vbG8PL2Wr3rr+spciVCGkO19X9gbRJapbobt
 zmQcqkVmVlNgpmyG7MgNpY8hUw8Ase41K9SsPAgg4rDEzI/vO7gCJPZnKeKk2lDIKFmF
 EWxvcc8e2GRTahu0WndGwDvHMsz8JrMZfinHoQV2U2bRXQvE58HLfZ7LIRBZysdJ9vRa
 egOovNbnNKzUKpaVsYmjD8/dtZOKO0P3+EjF9vcoa2maz5gS+oLSUyASQjQeOk/LegIG
 F1JU9sSYLe0CUfMYohHHJaufVQaiBUgqMQKPV1QIlWZLYTQhxWII1vWSLn8fTK5hBkCo
 qXBg==
X-Gm-Message-State: APjAAAW3LjkWydUykpUYk7uIyd0ZfAQeocFTu8a9P81P7wTKwM0SKPG5
 ZmpPxKolpo86D+nV3S+lDg==
X-Google-Smtp-Source: APXvYqzCu+5P6svNk0Z7nvquQqpKEJ1EkYhRWPedOycu5KVB8CbYQCvP6n9kDHJ9yA3cvmpJvOwJrA==
X-Received: by 2002:aca:aacf:: with SMTP id t198mr8671653oie.135.1575569930363; 
 Thu, 05 Dec 2019 10:18:50 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w123sm3752138oiw.47.2019.12.05.10.18.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 10:18:49 -0800 (PST)
Date: Thu, 5 Dec 2019 12:18:49 -0600
From: Rob Herring <robh@kernel.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: mxsfb: Add compatible for iMX8MQ
Message-ID: <20191205181849.GA6827@bogus>
References: <cover.1574693313.git.agx@sigxcpu.org>
 <1e452d74454d550ec4134428994ad8559aaa587e.1574693313.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1e452d74454d550ec4134428994ad8559aaa587e.1574693313.git.agx@sigxcpu.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_101853_428775_2AEBEC09 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 25 Nov 2019 15:50:06 +0100, =3D?UTF-8?q?Guido=3D20G=3DC3=3DBCnther?=
=3D wrote:
> NXP's iMX8MQ has an LCDIF as well.
> =

> Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> ---
>  Documentation/devicetree/bindings/display/mxsfb.txt | 1 +
>  1 file changed, 1 insertion(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
