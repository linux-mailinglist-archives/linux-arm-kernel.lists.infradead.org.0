Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC71C72C01
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 12:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZcpRUzW8aNSjJE5/Md1m2kxyV4StAYsBlV8bZM9CzdE=; b=Pqn
	6Plrb86zdUkALHIfr5JfYmrptqAwDpXolQiTrzaHGFjjI57LLcwKogQawgohRSWXY36blH69iSNLA
	pzTlxZLXdMNQROrOZvDlatnWjt0IodQqHX1Oh9nQ8iz9l3S+j2NrKp3u55nF9Vb2J7TWYEb0at2Xb
	V7Yr5zzh3/SOMO64KThmwlCG80jQjdNiOEqZfwTV66MQrjSg57Nsjvp4OYrjhnDs+JcAYi8fsUeFw
	Wcz7YYia21SqthSiPBPk2eZ/yIRj6B1FAQ5xDLG2LRqbPUGi5ekayhazDS8uiP2sLIQnDLm/A89Wa
	LM2It8W4So8yBTbRsy2Ck59bmsE4b0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqE7t-0002wg-Dy; Wed, 24 Jul 2019 10:04:01 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqE7Y-0002rm-Bh
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 10:03:42 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 87FD88026D; Wed, 24 Jul 2019 12:03:24 +0200 (CEST)
Date: Wed, 24 Jul 2019 12:03:35 +0200
From: Pavel Machek <pavel@ucw.cz>
To: mathieu.poirier@linaro.org, suzuki.poulose@arm.com,
 alexander.shishkin@linux.intel.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] coresight: fix typos
Message-ID: <20190724100335.GA7373@amd>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_030340_734601_321BDC56 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============8391265058431625746=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8391265058431625746==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="6TrnltStXW4iwmi0"
Content-Disposition: inline


--6TrnltStXW4iwmi0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


Fix typos in comments.

Signed-off-by: Pavel Machek <pavel@denx.de>

diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/co=
resight/coresight.c
index 55db77f641..1d66191 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -1001,7 +1001,7 @@ static int coresight_orphan_match(struct device *dev,=
 void *data)
 	if (!i_csdev->orphan)
 		return 0;
 	/*
-	 * Circle throuch all the connection of that component.  If we find
+	 * Circle through all the connections of that component.  If we find
 	 * an orphan connection whose name matches @csdev, link it.
 	 */
 	for (i =3D 0; i < i_csdev->pdata->nr_outport; i++) {
@@ -1021,7 +1021,7 @@ static int coresight_orphan_match(struct device *dev,=
 void *data)
 	i_csdev->orphan =3D still_orphan;
=20
 	/*
-	 * Returning '0' ensures that all known component on the
+	 * Returning '0' ensures that all known components on the
 	 * bus will be checked.
 	 */
 	return 0;


--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--6TrnltStXW4iwmi0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl04LPcACgkQMOfwapXb+vJUawCfe3B/JW0/QIiiRbvk/coaNJ2K
3tMAmgJ0BH4BEwlIbP17oRtQ//otl9UC
=yR5u
-----END PGP SIGNATURE-----

--6TrnltStXW4iwmi0--


--===============8391265058431625746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8391265058431625746==--

