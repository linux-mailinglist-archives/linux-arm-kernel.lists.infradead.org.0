Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 913F7155C0D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 17:47:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ky6Egt/jFSmp+umItUc8VVRFiBU8s//KNCE6akh87dU=; b=rOJKfKliZWv7lr4rz1QlcQLI6
	LB7G2Q78KgIYuV51pCz8baACpkKZmROGbEClCMG9Wb20YgqLrYbFBWcJq6ST2YkuJ2VmJhTyiylVU
	sYbJgUMGMZpccAI5S3tNbIW/jUdZ2fiJDKgHtyOY4icG4a3ZjujqQuTZOR9j2IkBI/DoVyY9e9lGP
	o8WrkNWbXH4BDnZTv8LEzR76fW/Z0n+/8+1Zc9rvXHnzD5Sb0jxEt1coymBsSia5fCFAcRJiCP7HD
	1mvH86wG8kwNaeANCXLmnndn3lbdmC+XxsWXmduO4eC5C8ebmx53h7kTmuz4mCc1+Bciwa9jrERS+
	KHGo9jJBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j06mo-0005LN-LL; Fri, 07 Feb 2020 16:47:22 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j06mi-0005LF-BV
 for linux-arm-kernel@bombadil.infradead.org; Fri, 07 Feb 2020 16:47:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:In-Reply-To:MIME-Version:
 Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=eWTV6T4FMGoJdzAjbFa3nsWB57wWRWVKpmyqG+v5nII=; b=EZOQPWO9IiO7oJP9XkIHr4dAup
 CT4AIJyPv/qY43Qfs8OuY1u8PMh6yecMPXUe8qQSTMq/VWPX87TRs0qGXXGYI/vqD8HRcipP5NBBm
 oxcWPPLwUjhQJyLfPzUt6tAzN/3g90CfowzBRhNUNY4nm4ndBiCeSH5qYpEqO14McN6RAGBVn6bU3
 6MOzm2/9mTt0W312HJ+pZ0mrVu8y6CH4flR/hNWoy2RbZp+l2162G0txmNYPb4CVOCL68sYQJWZVM
 RLl07SrlTdufKeE5NGaQtjYQOUBTn66zHdOoOukRFEhLeBunWu6i3hE4F9C40Xn3m1rmjBdClOpJx
 /GCFSTWQ==;
Received: from a80-127-99-228.adsl.xs4all.nl ([80.127.99.228]
 helo=hetgrotebos.org)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j06Uz-0000uL-6w
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 16:28:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=wizzup.org; 
 s=mail;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:
 References:Cc:To:Subject:Sender:Reply-To:Content-Transfer-Encoding:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
 :List-Post:List-Owner:List-Archive;
 bh=eWTV6T4FMGoJdzAjbFa3nsWB57wWRWVKpmyqG+v5nII=; b=JfJTIVZ3HFLhJmiKjXYAigds8d
 qD0c+wTDB27TCjGuqBcGGIwSYgevy23sk6SVUcyIZ5IMHNU8hXBVE9OTpJFoCLzIb+3T/vfsuI7R0
 NN9OsIVv64xJB/OvFuPejjq/GkmTgPJCwPmRhjAQCdRcQJR5me4FYWNKTOix3xYh0R7ujU8mQs16k
 fioY58hmXAiJTGtcO2wAXSgrjywK6YWGpIlPVDA+HovGD72/1Sn4hiJmv1z0sOvBVAyVD4IIkNHXf
 /O+UCre6dqFZhQNSYC7G837p2U7vzo5OlNgBzMNFjKKlcAyMn+jzLgfenxXSFlsrEbFwzEFDWxctj
 4jeLzmxw==;
Received: from deepwater.fritz.box ([192.168.178.25] helo=[0.0.0.0])
 by hetgrotebos.org with esmtpsa  (TLS1.3) tls TLS_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <merlijn@wizzup.org>)
 id 1j06mK-0007Ww-Pn; Fri, 07 Feb 2020 16:46:52 +0000
Subject: Re: Nokia N900 on 5.4 and 5.5
To: Tony Lindgren <tony@atomide.com>, Kees Cook <keescook@chromium.org>,
 Nicolas Pitre <nico@fluxnic.net>, Russell King <rmk+kernel@armlinux.org.uk>
References: <79b91017-b52a-8aff-4b9c-913ae655f7bf@wizzup.org>
 <185CD173-C13C-4D56-B3DE-9A8D7784963C@goldelico.com>
 <20200207163623.GA64767@atomide.com>
From: Merlijn Wajer <merlijn@wizzup.org>
Autocrypt: addr=merlijn@wizzup.org; prefer-encrypt=mutual; keydata=
 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
 /XslHw==
Message-ID: <da14d6bb-f241-2dd4-8e94-886217a40ed7@wizzup.org>
Date: Fri, 7 Feb 2020 17:48:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200207163623.GA64767@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_162857_372722_1AB4927E 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -1.1 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-1.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.0 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 linux-omap <linux-omap@vger.kernel.org>, "Arthur D." <spinal.by@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3114248039581165868=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3114248039581165868==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="CcysjkJIKAfYQvmSBLK7sfhhhx6TCpuTD"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--CcysjkJIKAfYQvmSBLK7sfhhhx6TCpuTD
Content-Type: multipart/mixed; boundary="7b9zVA0EQZJSiek98bzU9TIp1ZvGA8Ckq"

--7b9zVA0EQZJSiek98bzU9TIp1ZvGA8Ckq
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

On 07/02/2020 17:36, Tony Lindgren wrote:
>=20
> Looks like there's a regression in general for appended dtb booting tha=
t
> was caused by commit 9f671e58159a ("security: Create "kernel hardening"=

> config area"). With that change we now get STACKPROTECTOR_PER_TASK
> selected by default with Kconfig.
>=20
> Merlijn, care to try to disable STACKPROTECTOR_PER_TASK in your
> .config to see if that helps?

Yes, this makes the kernel boot.

Cheers,
Merlijn


--7b9zVA0EQZJSiek98bzU9TIp1ZvGA8Ckq--

--CcysjkJIKAfYQvmSBLK7sfhhhx6TCpuTD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYIAB0WIQRM5LT7NbLF9yb6a/UGN09rynK8WgUCXj2UwAAKCRAGN09rynK8
WhLdAQDVsEenlBecHkjL6TQOt3ECsZhffueLvIMrj2pDuHxC5QEAtGLVgfx7ao9c
MvWnlbL6dRENEtCs0u2fwShOB12gfQE=
=uQe8
-----END PGP SIGNATURE-----

--CcysjkJIKAfYQvmSBLK7sfhhhx6TCpuTD--


--===============3114248039581165868==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3114248039581165868==--

