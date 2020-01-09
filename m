Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6C71354E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 09:56:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZvMbs0GHOeUqBLa6UwBa4UX6iEKvuCqUeN94RTEPm0k=; b=sfs
	u7mwaMt2VDsOlqCEiUR3WkQE2hhSI+Hjk3bWy8Nk079GpEM8XjCj8kGAUt7xQbw/yFWefQKDXzcjS
	yzpeaFryuhPnLEg/VF2Q/NzPdgdXrkvOQdLQCICaVB5a+gdr7897oKwTIfgSreH9AFCwn0MyG7qHK
	dZufpWYY2hX7YE5+m4RT0uK0ch+fL16LQGDeDbm9hPD3kpvgeNhXeiq+Yv4CcoFTGa+ANGGO9b9q4
	VztEFngN+zTAtV8jPvFq/kIqJ1S3/c5Gx5w60wwAp9rEpv+EIhgr9ahUTj7+C2ZvzpOvrH+pVsNGa
	ZcWCuJNq5f0VPgutXBCQIQZgYmAw/aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTcO-0008Ef-Tw; Thu, 09 Jan 2020 08:56:40 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTcI-0008Dl-Ca
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 08:56:35 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 47tg2l4VSNz9sR0;
 Thu,  9 Jan 2020 19:56:31 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1578560191;
 bh=80jI77AOoYFB7RRyd6uDjLgdDaixjsEjEGudOjmOH/A=;
 h=Date:From:To:Cc:Subject:From;
 b=JCOdhCaXZ5S1ODqx4HOTSwZAQqa7f5B5wIEZVMRNVeeFNUfo4Vhc+pnG4e+TfLG+G
 1D81VF1EnMfrQq9hyh/WUc0pbtyxSs88pDfuspfpo4D/xWnnDlwvpz8TijeLo9BmBQ
 r5gTmNzT9XBCOIRxgEXEMYXrkbykZx/2wfhhFuLwwyS774rTyVS4HcsmIanTtXT4pq
 xtzKnaxZGsRjBWoodOFTOczsjq8zJgPSjYalDHqqtVcD+1CBoHlg7Bf/EVMnd5qyfF
 fh5NczIvS7yAmll2GeN0/weBcvKi3CFhdR30/rfw3+kjEQ3gpvIzoGVh3KUoj82RMd
 3sTdVK0HUnFXg==
Date: Thu, 9 Jan 2020 19:56:30 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: Signed-off-by missing for commit in the arm-soc tree
Message-ID: <20200109195630.2dba4028@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_005634_629484_EEF5D079 
X-CRM114-Status: UNSURE (   5.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============8470572650671217522=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============8470572650671217522==
Content-Type: multipart/signed; boundary="Sig_/824GcS9jCs456SzDeQhXmGM";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/824GcS9jCs456SzDeQhXmGM
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Commit

  4386aa866d99 ("cpuidle: psci: Align psci_power_state count with idle stat=
e count")

is missing a Signed-off-by from its committer.

--=20
Cheers,
Stephen Rothwell

--Sig_/824GcS9jCs456SzDeQhXmGM
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl4W6r4ACgkQAVBC80lX
0GwZlQgAirkY8xW4wHeY2GrIGzjzWjMtLySs51/+GFxYIQkiukdFuzXStFgI6sqZ
m02dL0NKR2rmKx9Imk2Q/NI5Y+J0pOId2l8HSCGLBJqYJnYeqzG+8/eSuYYngmHr
OVQ0WvgR32aD90t10v+0B6ynscsROyCc/e+kUDuQoeQpod1xmME3J50g3a3sbGr8
VHusxWauZifmjl2IWzvaVIgGo+CGpf79iiEue7pMMkodrfAIF93Ie933ai9wTwIu
ycUjU4kgRC20myd1bPjvi/977JsrC/lDp//jUkhX31sWl1z82Jqnzem18ePzJ1b2
bRo5rCD9sTF454g9dMy0rfCJUeTyhA==
=l+fn
-----END PGP SIGNATURE-----

--Sig_/824GcS9jCs456SzDeQhXmGM--


--===============8470572650671217522==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8470572650671217522==--

