Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7473A03A4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 15:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Message-ID:Date:Mime-Version:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9hgYBKWTV6i3v5scLvlc3+FwAXP0Xa5w75SYF5PlpBs=; b=SxaX+Cf1l1Blei9WLtg7r+tVV
	zi5Q5jpcnb92G11RFYE/Oyth2HIv0l4NwyrWeD5XOMA5i9fMv5hW5pNeyH0iAhxtL0WXN8jtgKAYY
	QsPvNNAZdGe933T9Oo0M8vRBbW4W6T1jLoR/zTz5kw+8nkMkdHJLSMHu5x7XK87L0sfUnwTPHIfei
	h7FFcIMypScRhxzKarx/Lw2IiybR9tGeV5tWAjIatzWkCgqT9Ps2jbs6CsYLBgjNwTK70JUMS+C9S
	DUcZ+vPW5nuhnLjlFaoVOUcPk37ybXxAF9cCo+iCmR5zUkq0BAxkUrf69G2ixV9OowCpqcmh5Yfd4
	WEQzjlrdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2yIF-0005yB-JX; Wed, 28 Aug 2019 13:47:23 +0000
Received: from omr2.cc.ipv6.vt.edu ([2607:b400:92:8400:0:33:fb76:806e]
 helo=omr2.cc.vt.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2yHq-0005mI-D4
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 13:46:59 +0000
Received: from mr2.cc.vt.edu (mail.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x7SDkrX7016017
 for <linux-arm-kernel@lists.infradead.org>; Wed, 28 Aug 2019 09:46:56 -0400
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 by mr2.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x7SDkmOc022042
 for <linux-arm-kernel@lists.infradead.org>; Wed, 28 Aug 2019 09:46:53 -0400
Received: by mail-qk1-f200.google.com with SMTP id a197so2532276qkg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 06:46:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=6dlfkMiIJoG2i19B9uaZmEjU8eFDQ1sIWjxdg+T91HE=;
 b=NProaxIcmw8LFHpgwVGQx93Iblb0ByWToWCKUwkOQJsWkgfWHBJl1JHY5xa/ARKQDS
 2oMQ7DNllpgPZU7qGPVrIx1DFEKMMxS0vlCqhCb4TuDQBR6Trw50jm+ohw5+eYLfOonC
 VveV9N7g4fpsACfTy2WWCv+x5Wbpy6vZ3DnlFB5Sa7cRGfoP7EkAJVcot1pkRY5q0AXE
 yaP8N9sFFuamcIUpbeCUOEk3YSzRI6GaXYMOKeWr6idV1AIyOK0tyjEkUwJfnK1TKm3k
 F17UiOjAdBQD1bmUDkd2nzAEVMtnVsp1WJTcdQZ8DfAp6l70LtCLSjKWB52Sfu4hlQ/W
 xz9w==
X-Gm-Message-State: APjAAAX6rTRL48E9IYPHCieBmFstORqE4+u7RxDNxYO6czWPJjFeLUtP
 5/gPQtZqSYnE3tOp7slVGTYTsV/Whx3kFMc5vZctJeB7s3KBSsOcU3QZNTskPU1lmBlewcSunyW
 Mhgc9sz0IQgVDBgfnuVdX8SBR07gV4Kw40CvkXIiV5SUrkg==
X-Received: by 2002:ac8:7543:: with SMTP id b3mr4241828qtr.13.1567000008084;
 Wed, 28 Aug 2019 06:46:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQaF6n9TNJ7UANQVE9yf8af37GlOyOcqa4tTFHjolQSwZt4CkCi4+VJt/bQM0T+/UKVBdLGA==
X-Received: by 2002:ac8:7543:: with SMTP id b3mr4241800qtr.13.1567000007811;
 Wed, 28 Aug 2019 06:46:47 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::359])
 by smtp.gmail.com with ESMTPSA id g24sm1327307qtc.38.2019.08.28.06.46.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 06:46:46 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Dinh Nguyen <dinguyen@kernel.org>
Subject: Re: [PATCHv5] drivers/amba: add reset control to amba bus probe
In-Reply-To: <46bcf493-9dd6-bf5b-089a-be158739a13f@kernel.org>
References: <20190826154252.22952-1-dinguyen@kernel.org>
 <30608.1566933924@turing-police>
 <46bcf493-9dd6-bf5b-089a-be158739a13f@kernel.org>
Mime-Version: 1.0
Date: Wed, 28 Aug 2019 09:46:45 -0400
Message-ID: <292438.1567000005@turing-police>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_064658_577430_092B9B82 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2607:b400:92:8400:0:33:fb76:806e listed in]
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
Cc: devicetree@vger.kernel.org, daniel.thompson@linaro.org, tony.luck@intel.com,
 manivannan.sadhasivam@linaro.org, keescook@chromium.org, robh@kernel.org,
 linus.walleij@linaro.org, anton@enomsg.org, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, ccross@android.com,
 frowand.list@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7589976042674284858=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7589976042674284858==
Content-Type: multipart/signed; boundary="==_Exmh_1567000004_1612P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1567000004_1612P
Content-Type: text/plain; charset=us-ascii

On Wed, 28 Aug 2019 08:34:20 -0500, Dinh Nguyen said:

> > Does this DTRT for both old and new U-Boots? My naive reading of
> > this patch
>
> What is a DTRT?

Do The Right Thing, sorry...

> > says on an old U-Boot, we end up attempting to bring it out of
> > reset even though they had already been brought out.
> >
>
> If the peripheral is already out of reset, de-asserting the reset has
> no affect.

OK, thanks.  There's been hardware where doing that sort of thing twice will
confuse the device and cause issues.

--==_Exmh_1567000004_1612P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXWaFxAdmEQWDXROgAQJZPhAAopKhP6wn5B9evWUpllhb6CIajYqxhob3
zLAF1vVdOpPXyTT3PaFMjwrqKiPt9QnMLHW5odZ5UswcH4dBRByhwb8Hr8a/Ibo9
Nb6BdK1KuilWx3bCvw63nNH9aB+tPvcaOUtux73gD+HaPa/XCvzZvObCnFCXa4oa
9gQJl8GG8pRLfH03QPSYGKAzyJ35qt2RBarVa0Z19NZPB5LDDePLKwxblatRFICW
mhdH1t6uC7CuxMqfHKbG5MyhdmgmmOyHg16tHxZ85B8f0CoCFAHx9sNzvS3dmXZd
bP2+r7cQ4kNkIWI/PNPzh+s8D9ZlWYdGn1p2VQU/4FKMh2d7IDS5MvLgA5rf0DiE
bOPBbqzfZ/DsfyW96M9e4/53OYYK5gqC+ZaePJKY4BkAHLNtKewczCw6E+kck7OW
4ya+eOEFQzl9wC5XNMrYkdV8DLhftU4qEzAHuNH2vHIK7BK+3ARGB4tSQyTMNi/x
yOPY69cLv4llawfjD/y0PSqmvKN1MlIjmxeAD9kh6AoTUNNNRgj0F+T/Ma91uBeV
50x+YgZZ104bD6d3s5U0kIgykQJARE0JivC9fkFuKZXE6vtIAssE3FFLw2NKncXw
Sq+YA6DuuSvCdhAWEmYJpbpwREHEGAjLsN+JBxPhV7vbbGhVV1UuYXPDVfp18Moy
fW9l0ZeoE+c=
=tC0P
-----END PGP SIGNATURE-----

--==_Exmh_1567000004_1612P--


--===============7589976042674284858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7589976042674284858==--

