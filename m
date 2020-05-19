Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C82A41D9515
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 13:18:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Message-ID:Date:Mime-Version:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zIcuFoOT3zsUtbg1CmpMuFNdRF7Y45jQhz61qfa+8TQ=; b=rgajitaUCGC8MBNUKmhK41Q9P
	gZAwA1BnCBg70/sZgfzDcFQvmyq+rBHESwOeVtimN3ohDJKnlkM04CsBR020QM05p87yOZ50dCRiY
	AnxKR2a2JJO49X4GnTu2psQRuh2gsg9AQI6PRqGY2aX1bitdhkJPJouYfd+DAe5vfI81LOEX7YUIj
	kIH8APpgJpLlEcyb5/EfZ1nK6BhC0Bb6jTJRFBJUx4wtMIEI+rOwJkhh919hd4yQQq47+d300aOIM
	/Zp0z+qIUA8ObhosSCZ/S4LF5nI8BRbNOJKLFKC+Q9sVlp1iXdtA/iVNNwkvX4q695YCA92O6e3tj
	etQdESCDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb0GD-0001Qw-Ds; Tue, 19 May 2020 11:18:13 +0000
Received: from omr1.cc.ipv6.vt.edu ([2607:b400:92:8300:0:c6:2117:b0e]
 helo=omr1.cc.vt.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb0G1-0001Pl-R0
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 11:18:03 +0000
Received: from mr2.cc.vt.edu (mr2.cc.vt.edu
 [IPv6:2607:b400:92:8400:0:90:e077:bf22])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id 04JBHn8i031222
 for <linux-arm-kernel@lists.infradead.org>; Tue, 19 May 2020 07:17:55 -0400
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 by mr2.cc.vt.edu (8.14.7/8.14.7) with ESMTP id 04JBHiX6002342
 for <linux-arm-kernel@lists.infradead.org>; Tue, 19 May 2020 07:17:49 -0400
Received: by mail-qt1-f197.google.com with SMTP id z5so16261299qtz.16
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 04:17:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=XdezUHtnjEPl34SNV/OG/wiZxI5dHtj/gxxjDGommaM=;
 b=iYZv7xUUxY9Q6wKoM+xNpkbagb1/7QXkX6ei9VuR+xbO1nO0xAgwVcZg/LE7jHLn6C
 ZWfblbMCHG7gkHngDLKjachtloTVxxm+CvAH7yrLPYEn4uQ2ddDNRfq5c8M+FkZsJnTG
 x9VCWjp2Xx1TZAQ83dF8B0H4BUk4vLIwI9Ec6yDdMd3Dtz4ZGYmSvCcS36sxAAKwnHC8
 V7R+PrWnqIp1TfmR8i69b4uTFAA3y4BRdsEUOnjQBF19Jj7siwz554oTHfHJJaIj5nQ6
 C9OhNswt7ZwhJGZOyW+FkbU7BSll63upBn6TavKimWnOyZQicC69Ft2GfpG9zFK2MBS7
 +I+Q==
X-Gm-Message-State: AOAM531l3mAMRmTvdH+5J0U896jHwIlRT0N4KEbY4eHcZurvQJFWQuSx
 HqF5XC8oxwfFz+a05a/TRqQj/RIURUcKAgSlm9SXql8bQ9exSnTePr/QGZg2f7x5rMMMJjIV3Yy
 4P1WOq/EhUz8ieFr8eicq1P1a9glhI77Izq1CEuhG9YvUFA==
X-Received: by 2002:a0c:aec5:: with SMTP id n5mr20903688qvd.0.1589887064021;
 Tue, 19 May 2020 04:17:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzYm/oMeyoCURXB8A/ux+JFjkbZhUA+4db9QUZHAWEUR8WA0qRoukom4Qn9ITWbQR/8QthsHQ==
X-Received: by 2002:a0c:aec5:: with SMTP id n5mr20903663qvd.0.1589887063744;
 Tue, 19 May 2020 04:17:43 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id z65sm10191073qkc.91.2020.05.19.04.17.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 04:17:42 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Qii Wang <qii.wang@mediatek.com>
Subject: Re: [PATCH v2 2/2] i2c: mediatek: Add i2c ac-timing adjust support
In-Reply-To: <1589857073.25512.34.camel@mhfsdcap03>
References: <1589461844-15614-1-git-send-email-qii.wang@mediatek.com>
 <1589461844-15614-3-git-send-email-qii.wang@mediatek.com>
 <CAMuHMdXjLakWDDEy=02prC7XjAs_xBnt2mArPFNwyHgUoWw6-g@mail.gmail.com>
 <1589857073.25512.34.camel@mhfsdcap03>
Mime-Version: 1.0
Date: Tue, 19 May 2020 07:17:41 -0400
Message-ID: <116825.1589887061@turing-police>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_041802_009188_E17BAA56 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2607:b400:92:8300:0:c6:2117:b0e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, srv_heupstream@mediatek.com,
 Wolfram Sang <wsa@the-dreams.de>, leilk.liu@mediatek.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux I2C <linux-i2c@vger.kernel.org>, Joe Perches <joe@perches.com>,
 linux-mediatek@lists.infradead.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5760417534607437376=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============5760417534607437376==
Content-Type: multipart/signed; boundary="==_Exmh_1589887060_31675P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1589887060_31675P
Content-Type: text/plain; charset=us-ascii

On Tue, 19 May 2020 10:57:53 +0800, Qii Wang said:

> (1000000000 * (sample_cnt + 1)) / clk_src value is a 32-bit, (1000000000
> * (sample_cnt + 1)) will over 32-bit if sample_cnt is 7.
>
> I think 1000000000 and clk_src is too big, maybe I can reduce then with
> be divided all by 1000.

Yes, it's definitely too big, the 3 DIV_ROUND_UP calls in  mtk_i2c_check_ac_timing()
end up causing a build issue during modpost on a 32-bit RPi4:

ERROR: modpost: "__aeabi_uldivmod" [drivers/i2c/busses/i2c-mt65xx.ko] undefined!
ERROR: modpost: "__aeabi_ldivmod" [drivers/i2c/busses/i2c-mt65xx.ko] undefined!


--==_Exmh_1589887060_31675P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXsPAVAdmEQWDXROgAQLPGg/9GGQpzw7XKYxr/tvBAg5sc8H1rTqhNMQF
FGBWDl46QaKwfWatNNq0L6HGC2X9FDlG7hdzIi0HJFJjTDVGlN9C/QNH5zeCmMCF
zDcbsj8tnLoNMW4v2Dl3Q2ZxFWihnepXqfzg8KG5fDDiEHSaP38hDe8GK/MXb5X/
KjGRXMF1qQnbDh2q1trjaJExQqbJ2D2wyngaUS0vDqJOaXm3TaY91NbNUQUVlOmd
wQl05fDL7ziCbcrxn5HdNSxaBiSTNtQwcBrsV8JF7YImeyDx+/I974qRSxZB8zKF
+RPabakMPOZFBgHrikYKplTogjXN5fCCF8F/muITK1/EPpI9PgeMDZNCGU07xRux
v8/UkqwLqAuAnqG3vm5F9I1q+0qbEyyCaU4Mm2DWMGyYzCHXAkfQAJQF/MkQhE54
JxyZKSv7Y4x+nMgL4tlD37DFGCVTXlk9nUyKcNqr08nlu2nDiszlTScHtuHnSqEo
uk3mbh7mKYwpbMJIa/j0n5zLVabSB09IDZ5Jk/+ZlTPh143zTqqFXKfB5akC6Ve5
6pGPcsXJl6ubOdaLT8LcxRVkyaKa/3tYXLBFjxsu6NkfNhytddnVzPAw6/5qRcos
M4R7h0mvQLLRPDLrTkNq1ur6V/3xgup/M8qAunQyKWPNZXYPvNc93Vgh1b6274o0
aL8PqtTCnss=
=SvGK
-----END PGP SIGNATURE-----

--==_Exmh_1589887060_31675P--


--===============5760417534607437376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5760417534607437376==--

