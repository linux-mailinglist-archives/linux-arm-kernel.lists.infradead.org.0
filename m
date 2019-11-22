Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3A7107B80
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 00:35:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zoXlGwMuTuHEH9W+rX0vwpVwZlepuCUHCi6Kuwyt2Cw=; b=MMYxrlRPQ3rma4
	eT+/z36TOmGrLc6PN1NTsioRK6cZqmI89iZMRj+8VyN9MY9+i4j1wVI/rXLYkQEs9FshVPCEqmT25
	aJDLHybvX6SZQ55cqXKQ6lFZVZwleZ1BZvE9xv4ZAkWgUbqqa3pkeQXyFuROGX+pDkWVmP3vZeLnr
	mRoVgCcMib60g+hKtJvzFh5fUcKd8BBUgyMDKjf8jukaVIE7nkrAp4JEMbAleUaG4Sgl7T5PelL19
	cXwnDAjBq1nxyR4WHGJNbi9ena8lKXtA6C1MhZvegOFPFyx9PZNbbYmesYN+PjiLzoVR9Hx5BfYPV
	Vlxr2MnYPlJWYDuHYctQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYISK-0004vK-5G; Fri, 22 Nov 2019 23:35:16 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYIRO-0004Sq-UR; Fri, 22 Nov 2019 23:34:20 +0000
Received: by mail-oi1-f195.google.com with SMTP id e9so8047956oif.8;
 Fri, 22 Nov 2019 15:34:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=/H8wXNOfbxRLTqZKj7EYkjG03fC3qM1eJrt+WodnPxI=;
 b=smcjJHJJL98ShtYE6aIXfIGHhm42DO3yoZBnsWqRujfmf7e03fpTdPrvwdjNLLQTBi
 P85iK81v7dBuNjkAK2RQUEvXyQcP4eB9a2kdKEVj6dRqfcoXb4eBGsPz0qnWFNA3Jpl3
 H4cRpVbFDyOXFTABYfJnlW/9tV5gaa9k7Tm9q9sXnSoHGfYzqpbInBQKLy+/eh2JrwWU
 t1bSyLydj6A/faakt6hcfjqAXo5hdTzRNjG37i6b5c2zLEsUI9I4665AVI/UF/NBW8u/
 3qeKgclKRGGIAK/UGL1ItifZvm8lkgYW2rYWmm7Unz3xrbWSgaePgsYVccA7a8TWJ1Qg
 FZHQ==
X-Gm-Message-State: APjAAAVVimlkp6pbWJP1L0QnAHRp6dgCQowzJaN4McP6MdE/HkKFGDv2
 v0IbvavZmtt2Qnd5EXUkQw==
X-Google-Smtp-Source: APXvYqyFReQGWCWQQxNW++0gPrv20BWVgrq1Wd2zA1GjcAqvNRudJZmfSpKFl6IBnj6PRV4R9P7w9A==
X-Received: by 2002:aca:d483:: with SMTP id l125mr359885oig.124.1574465657879; 
 Fri, 22 Nov 2019 15:34:17 -0800 (PST)
Received: from localhost ([2607:fb90:bde:716a:c9ec:246b:67b7:9768])
 by smtp.gmail.com with ESMTPSA id e93sm2729544otb.60.2019.11.22.15.34.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 15:34:17 -0800 (PST)
Date: Fri, 22 Nov 2019 17:34:14 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v5 7/9] dt-bindings: interrupt-controller: rtd1195-mux:
 Add RTD1395
Message-ID: <20191122233414.GA6762@bogus>
References: <20191121050208.11324-1-afaerber@suse.de>
 <20191121050208.11324-8-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121050208.11324-8-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_153419_003402_3B9FD1EE 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Jason Cooper <jason@lakedaemon.net>, linux-realtek-soc@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 Nov 2019 06:02:06 +0100, =3D?UTF-8?q?Andreas=3D20F=3DC3=3DA4rber=
?=3D wrote:
> Add compatible strings for Realtek RTD1395 SoC.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  v4 -> v5: Unchanged
>  =

>  v4: New
>  =

>  .../devicetree/bindings/interrupt-controller/realtek,rtd1195-mux.yaml   =
| 2 ++
>  1 file changed, 2 insertions(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
