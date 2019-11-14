Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E35FC27A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 10:21:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=07yC/yz8KTRgApNMVwFrpBoDwGEVD+VfHHXgnHzPsGk=; b=J40
	kptpEG9t5Ra6Qwcpt+Lrr9fGWpwUKbbR5Eu0aJQojJP9i0j0dwY8pmFSPXLmzS+DZivOKPGv5yakw
	mcVKsZRVZn71SINkxgf4ze1YE5I6vHWWzFKW0njeksrCC3MpIN7+lMs6cZfsspB05efm2SmdYpmzY
	nNl5SKTZ7/rcZD+8Sp6ghJ+enQKC5/G/+5YDIMFsBgp2prLUvIWjwB452dE3qfVh+cXnteG9sQ1gR
	7dgxJe7zndn+u6YKFydhzBLwG5efEF/XDuqQSr5f70olGdYVNa/o1m4K13HXTYxcFW18ejRjLGrt8
	0s6Q30I7Ce6uZOyTU0ARnxhfE9+gKEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVBJl-0002Ik-KE; Thu, 14 Nov 2019 09:21:33 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVBJe-0002IE-Dr
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 09:21:27 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 47DGFJ1C1Wz9s7T;
 Thu, 14 Nov 2019 20:21:24 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1573723284;
 bh=Su9SciTG5y8VlxFFPshZ485bk7lrNMhM9K3kUHG2sRQ=;
 h=Date:From:To:Cc:Subject:From;
 b=KCZxPz6uOlnMxW52o/7PWKk7Si0rLcY6YQtAKWjMovQSKPbnyapuXVL6FkVMNW1X9
 s2vcdpULnyAeQwBl16MEF6RrIV5uA7JRRxcYvUixkh1dXrzn9IzKQ9ot5wnGOrV2VV
 Yf/gIsY23QqanWOjXBDL75ShuNIeNDdseBMpMByri0tcxmquWtPD0h7JopnEVIqrFQ
 dlwzhFa5AFBCcyHicGzDSPRoAV6gDgBOmXOFvLhrj/usjlhSzgrWnrj7TFI2rjg7f9
 1IgzO/Pfw6YQaa+ZIk+ivRuuPXHQYcvbS2+/O/7U89rmSuUPTv+IdlY+9sv6u25t68
 vgpT6MdicoYIg==
Date: Thu, 14 Nov 2019 20:21:22 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: Fixes tag needs some work in the arm-soc tree
Message-ID: <20191114202122.0f38eab6@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_012126_668543_BBF3884C 
X-CRM114-Status: UNSURE (   5.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: multipart/mixed; boundary="===============2586582838791998810=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2586582838791998810==
Content-Type: multipart/signed; boundary="Sig_/h4bRdnJqf._UF0UZazA8wl5";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/h4bRdnJqf._UF0UZazA8wl5
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

n commit

  9a6edfe32f37 ("firmware: arm_scmi: Fix doorbell ring logic for !CONFIG_64=
BIT")

Fixes tag

  Fixes: 823839571d76 ("firmware: arm_scmi: Make use SCMI v2.0 fastchannel

has these problem(s):

  - Subject has leading but no trailing parentheses
  - Subject has leading but no trailing quotes

Please do not split Fixes tags over more than one line.

--=20
Cheers,
Stephen Rothwell

--Sig_/h4bRdnJqf._UF0UZazA8wl5
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl3NHJIACgkQAVBC80lX
0GzlSwgAjoiDtqoUq2bkVMFZkO/8ZZdHgoNLzkX09oU87yoReHG8Ljw3z5b4pTCd
t1quaUWwTxudkyIzZk3xy1p4MCiAjJ+HGgEV9UM77VF+2ZCqjZEnYAspiQC2MevS
RSgmLE4RHfvrJ+6dfAHnw0K49bqhgB0pvdr7tgIoxBrS7gwofx0Dvk5jYHFQL3hv
bMipMsV7y6n5TbA9Uckm+h+5tKIZdgUZF91D7HFnHwMALslTyyJE6exS7OeqWqzy
8/5ZaUtU9e2FbBggSCMvj1h415HisgDMxEgJjrJ2evrVWwUKpQ6XRw0LJxvH+qQb
n37OjnJ0TmKP4cNkUZewx2xdQXQAFA==
=fc37
-----END PGP SIGNATURE-----

--Sig_/h4bRdnJqf._UF0UZazA8wl5--


--===============2586582838791998810==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2586582838791998810==--

