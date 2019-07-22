Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3350670899
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 20:30:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:From:References
	:In-Reply-To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tee/EMWYKt+lkDBvTms3pZ21Ee8oWxlhfIi3lkbKIdY=; b=pzN+HaC0QoZyA5
	W0xl6xZvZke+YLY2u+n3obeJDHnR+jvu9OURvvpquIt1Xs2lmqstUXakd+54wYvMSMW0xdAqJT+GR
	3WWAtwNc3IpBehPHOgJ59oHs0RIr0H04k8CN5oibHrODkZk/U64dya/dk1B86ju1hgdn4/Vuc8h1F
	gRg9rsI3bOV1JZcwWF2NDzGO9qvewartqeZM8k9rm+5uqFj9JKi+NIeHBUKrsDW+8euEq1kmwRgsM
	Qf0LVglLff9RoUSGp7w0NQm1rnmMwWlQkkYLMQ4A0XN7noNbHscQs4ncGTwMmS69rZi3ft6OnQrKU
	rEBxGBHrtAixwsASpKOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpd4P-0002Kj-Jw; Mon, 22 Jul 2019 18:29:58 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpd24-0001PF-6D
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 18:27:35 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 45sqmp2BlBzKH;
 Mon, 22 Jul 2019 20:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1563819962; bh=VdkVzwoOtZlqZueF8/cl4Cw/TEd5aeM0H0H+HkKBuHw=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=RUZuuVyAeEN08aQbW1aMBGHCntMzvEQsWdZxsnV2TlF6VAHLXArCKYrnuuj36S7mg
 2qWx/TLjBSSR6CZk7m5jRtdBSNt8cceRKCfVNhR2JN+yUN9Bnren11ECGv7NA6KSb6
 E3iWesF/2y7vRobyqmMapyKQu1lj741wKFYJQf/poAs/E8adqu90kYe1+C+EEodrnk
 KRmbQ6Fvle1+zSacZp2Tvk70Mtgdyd6HVdVhehmMqXRa66g+Cjnk3N5FO6uNO/J/aw
 8d/dktp4sRjoFl+NdsfJY/QPNdinmKY8wOGJUImuEpDUqhBrzb1CkSIjiX6Xju4x7e
 ZEEwZKewbbucw==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at mail
Date: Mon, 22 Jul 2019 20:27:21 +0200
Message-Id: <ca3d0b124cdf6e2d0ec158a7948f08dd8abfd3b7.1563819483.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
References: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH 3/5] ASoC: atmel_ssc_dai: implement left-justified data mode
MIME-Version: 1.0
To: alsa-devel@alsa-project.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_112733_298524_6A2028ED 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogTWljaGHFgiBNaXJvc8WCYXcgPG1pcnEtbGludXhAcmVyZS5xbXFtLnBs
PgotLS0KIHNvdW5kL3NvYy9hdG1lbC9hdG1lbF9zc2NfZGFpLmMgfCAxMyArKysrKysrKysrKysr
CiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NvdW5kL3Nv
Yy9hdG1lbC9hdG1lbF9zc2NfZGFpLmMgYi9zb3VuZC9zb2MvYXRtZWwvYXRtZWxfc3NjX2RhaS5j
CmluZGV4IGIyOTkyNDk2ZTUyZi4uMDQ1NDFkN2MzM2ZlIDEwMDY0NAotLS0gYS9zb3VuZC9zb2Mv
YXRtZWwvYXRtZWxfc3NjX2RhaS5jCisrKyBiL3NvdW5kL3NvYy9hdG1lbC9hdG1lbF9zc2NfZGFp
LmMKQEAgLTU2NCw3ICs1NjQsMjAgQEAgc3RhdGljIGludCBhdG1lbF9zc2NfaHdfcGFyYW1zKHN0
cnVjdCBzbmRfcGNtX3N1YnN0cmVhbSAqc3Vic3RyZWFtLAogCiAJc3dpdGNoIChzc2NfcC0+ZGFp
Zm10ICYgU05EX1NPQ19EQUlGTVRfRk9STUFUX01BU0spIHsKIAorCWNhc2UgU05EX1NPQ19EQUlG
TVRfTEVGVF9KOgorCQkvKiBsZWZ0LWp1c3RpZmllZCBmb3JtYXQgKi8KKwkJZnNfb3N5bmMgPSBT
U0NfRlNPU19QT1NJVElWRTsKKworCQlyY21yID0JICBTU0NfQkYoUkNNUl9TVFRETFksIDApCisJ
CQl8IFNTQ19CRihSQ01SX1NUQVJULCBTU0NfU1RBUlRfUklTSU5HX1JGKTsKKworCQl0Y21yID0J
ICBTU0NfQkYoVENNUl9TVFRETFksIDApCisJCQl8IFNTQ19CRihUQ01SX1NUQVJULCBTU0NfU1RB
UlRfUklTSU5HX1JGKTsKKworCQlicmVhazsKKwogCWNhc2UgU05EX1NPQ19EQUlGTVRfSTJTOgor
CQkvKiBJMlMgZm9ybWF0ID0gbGVmdC1qdXN0aWZpZWQgd2l0aCBzdGFydCBiaXQgYW5kIGludmVy
dGVkIExSQ0xLICovCiAJCWZzX29zeW5jID0gU1NDX0ZTT1NfTkVHQVRJVkU7CiAKIAkJcmNtciA9
CSAgU1NDX0JGKFJDTVJfU1RURExZLCAxKQotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
