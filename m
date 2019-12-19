Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865EC127139
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:06:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9o/t6/geN9mT7i/BTWS09bm/L9RV9+0MgBqkCzttBVI=; b=oZ4p9EDHBegbaF
	KE8fnJPOZMwZN8ac0bHHhiKL6NrjEMEEjQLc5gMC6BWqbnuP0IfgUiv0FrFsmbxEZ1sosuImNMahD
	gnQBq/3O9jodYzbQwH3Ak0TT9judUETAhF/WwA+O4V3JU1GBV87zbaJu81JLk0V69Az5j0vxR/lew
	9wZyA1+elbaD48y6aEHvMoivBvpj1UBtha08Txg8DWUCH9pmt8jbp8dMfIVV73Gz/887rXAMc/qdU
	mdUTViVyTxOPVdFrUF4GcpAvJ1k2n8af1T6MA0o3n+8tspALebfmXwoMpJ8CWcRU722F+Gy1XRSi3
	jP4fGGzmZrh4ap56EzpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii4rh-0003Ap-EE; Thu, 19 Dec 2019 23:05:53 +0000
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii4rQ-000368-1O; Thu, 19 Dec 2019 23:05:37 +0000
Received: by mail-ot1-f45.google.com with SMTP id k14so9241551otn.4;
 Thu, 19 Dec 2019 15:05:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ZCQ1Dwncfy85QJcD+8lI4SZ2RUHk9BCcr6X6gMTs3cQ=;
 b=nCYkN2rPdnqI6hw02C8bY+/qptnH6ZADH/DwPwXq65tzgqJa4c/8ui/T2ge7B3MCrJ
 SSDTAsYa10FX+0Ps65S7OKLr1V1rTfsgAo7ptcco72KbQptNmvk3RhxX9fqySyzGZPOw
 U8yzrv3E3MKPvFuCbTRWAFiUHNKUWchiZiVduW/izASY4XfzH16mesGA3/84c5qgfIpn
 5RxlUoaAyyGAbHGbIu9jPefxvlJLM9vMHdlK4VcUQWZAbEq1O3BlmPg5rl63w27bEsDO
 rGEx51u4F9FMdXzuQRIBsvSOJbpiaYUzj9YGn435v5Xm90JioyMbhYE/pCwdqGDAa3mD
 ajZw==
X-Gm-Message-State: APjAAAWAcgxbTO1N/G4+OmSEn+WABZz1C0g6xqWGCk+MDpsFgGL83MI0
 Imuiy8jrDyPw9yn1P0WdNNWwT6EXmQ==
X-Google-Smtp-Source: APXvYqxGFILFdnmpYvTlQh/DQsjlI6cjEEvTx4e/kHMSohnyw/QBA+Cv+Bb7YZtOB1stiIlIBzxl4A==
X-Received: by 2002:a05:6830:160c:: with SMTP id
 g12mr11177327otr.82.1576796734931; 
 Thu, 19 Dec 2019 15:05:34 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id q25sm2662018otf.45.2019.12.19.15.05.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:05:34 -0800 (PST)
Date: Thu, 19 Dec 2019 17:05:32 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 15/25] dt-bindings: vendor-prefixes: Add Fude
 Microelectronics
Message-ID: <20191219230532.GA6057@bogus>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-16-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212033952.5967-16-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_150536_113505_CA853E83 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.45 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.45 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Dan Murphy <dmurphy@ti.com>, Pavel Machek <pavel@ucw.cz>,
 linux-leds@vger.kernel.org,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Dec 2019 04:39:42 +0100, =3D?UTF-8?q?Andreas=3D20F=3DC3=3DA4rber=
?=3D wrote:
> Assign vendor prefix "szfdwdz", based on their domain name.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
