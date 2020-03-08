Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDC317D686
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 22:50:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NvMiEDcOJH7fDBq0UVcm6Yrg3bsb+E9iE2BAK/MzI+A=; b=hVD7uEKaYCC66C
	8N0ODa7ioW/QcOs3LlEhYjBE4l6H0VmkXbMeMZgMWdU91VNrHsaCpV8uTxRwXFMs3yr1AtBEs1kfg
	vD8RV0bl6k5nTBAEq01n4uwhRJyBmTMOQ2wNJA09IOPpv+FCaWAgqe5rspHgR6qQBLbgRghm2XzZX
	ZOUn6y4y/5cJAQtjtQtOrToiiLipUSx23TqoCAV4srenNO0YZrIUi93fXUMbxN8rCcx/iuI4PkZgo
	X1TkOqg777Zld99Kw5JBXwwXyheztZv4/tXy4cdFMDxAIeraVv/JW0Baf+hMHrYDbOccSjji1ZooN
	MMSXhIPxkDFwFMosEsOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB3o8-0001Hw-Q6; Sun, 08 Mar 2020 21:50:00 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB3o2-0001HS-0K
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 21:49:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1583704176;
 bh=uvTnr5QT5mOgGF73WARSWzpFJoFtVP4k+lkjGy7VaEE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=EygN2SjKr6omx8QyzHBd3aD+c/3WnsdyRbRwwqN87qTpwotlDUm4oHZhcerMEVS9A
 OKgWBdsvnPRdXX3iYab3IrKnn4Jp8rcWA8hQe85hp1849j2uHhJnznJ0nSQqqkA1jY
 YiCpHQZTntXk0QbdadJu2mt8buClnbj2rwBVvCb4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([37.201.214.212]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N7R1J-1jP8If2jHx-017l3H; Sun, 08
 Mar 2020 22:49:36 +0100
From: =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: linux-clk@vger.kernel.org
Subject: [PATCH] clk: imx: gate2: Fix a few typos
Date: Sun,  8 Mar 2020 22:49:26 +0100
Message-Id: <20200308214927.16688-1-j.neuschaefer@gmx.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:TR0iVzdX+30Zder+jNCdtNUVjBN6YV/5WNwW7AyqXPrAWGNQWUM
 /ysJa9gQ6nGCJJejBMJPcfDhNEroAVHxs7orNweEg97xgrHZ7gMuiDv2kitzBDaFuCD4FZ8
 /vJooFp24hWq+C1nZ+7r6yOZgoLW5JNsoO0sOW5PN/lj9TWLn9fPAHlq1tmOAtnRHhqxqZW
 xAytEn1376bJoGjKOW8xg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wwDlsyUpAjg=:MsBHMYfRXw/ljJvdaaAlmq
 Ww+UVemjqlWKGpGxwfYa92RtEtiLFydmZjBBoV1MSkRF2cuSEfWssEAIqQCkih0l5++voqsXs
 TFCvIB0749vQ859whrkJa8dgnBnuTvLcp8GPn2s30T6hy7zFefkzmPrsrBXkbiyxYcFbn0saZ
 XzxJ6tWvCFcAl7rbZb//OPVj6dhTrR6Id3T6NLH1pDrU6BZqD7B1ou4sl/QL2iVSSvNPioTNd
 sFNJJNkE2phGwkumMENE1B/tYjkXkH7L1rDa5JzquAMVPw0t6BfdLZmz+ZJyig7/5BBz+/7wZ
 cbSjed88LUtr/heJe3+ZgXaUa+5JeST/Z4VHmP6nOz2IVgZVlpYWqx+LtKIhKN6vnrKy8dUjh
 GUKm+bX5jyL8LQ58RjQuxWqv3j1NsctW0wSpOmPF7rlahfl0VxDMmG0OWE1JHK7Qlw0Or6Ibi
 zEAnX5NQ00Xe4bASKTZeVimgMsXdkH+W4dlZCLpLT6/9z/81XICttfd0lewWT59Qo2dBbO8wU
 E5bbcZi4hKE+pSili1XhX6+53rYkkl1Bj7KA7OjX0vi03wROQeLBNDzuYEW05Zx145w5w3Tjd
 dlSXuHKxnalLeSCkBCXndZNsssLxosM7jGGKtAfyCUQUJIqP6enfaUJ9BGxiYc44TtsAS3znE
 y88zwyQfk5h28t7lXsm95pMECsQFb3mQTiPoxVTW7WOdznOOADpmG9XGcayMyFPOQPIZVdEF2
 SuHfoAuVkiKOgjqIXvtdZuH163xbUizGs+WHTDVcc7S8BKFtYsu62ZCZytVthmrZfCH1A20EA
 fU1ol910Iz/lT6uHWSuLV21sI/Coswd0nK/iH1m0AlxeYDgysN3Gvq/MiD6VwAIQBXAp7VFD7
 LPE4xTY9DjJxHMD7fH/OPxEX2lWD75qQptWZY66Ieh2W2OqGiNiDVZMN5vkjo45qarGLWoBi4
 wMhNAWusjOOimBw91s6lQCTUuiwWbf/DGHSaVf7PGY+TLS1jxP410+GDuvgIsz5m85YG+oBWQ
 f3L1Ah5UlimAJStD7j0DtBFBbN4q/nOrQZjWq+XF0fXqfUklwdrM5Wq/kKxA6OmToqQCHT5kH
 HTNY25gCnQ8LS58lvxgiwm+lwqffE2/Y6L3252UKMET+S63TbIm6cXe89I+cGnuElGL0bBmvm
 +kMkhoxEAs4wAZnI3N5Z+FUJH9fxW8eS9HRpiuvw6/G+CkWGEXt+BEtcVj+3ZMgCEkq/tf08l
 KpD0SdgJuHLMmQTq4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_144954_344843_40F2F64E 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [j.neuschaefer[at]gmx.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Enrico Weigelt <info@metux.net>, Abel Vesa <abel.vesa@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Allison Randal <allison@lohutok.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogSm9uYXRoYW4gTmV1c2Now6RmZXIgPGoubmV1c2NoYWVmZXJAZ214Lm5l
dD4KLS0tCiBkcml2ZXJzL2Nsay9pbXgvY2xrLWdhdGUyLmMgfCAyICstCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Ns
ay9pbXgvY2xrLWdhdGUyLmMgYi9kcml2ZXJzL2Nsay9pbXgvY2xrLWdhdGUyLmMKaW5kZXggN2Q0
NGNlODE0ODA2Li5hMTIzMGNjMjE1YzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2xrL2lteC9jbGst
Z2F0ZTIuYworKysgYi9kcml2ZXJzL2Nsay9pbXgvY2xrLWdhdGUyLmMKQEAgLTE1LDcgKzE1LDcg
QEAKICNpbmNsdWRlICJjbGsuaCIKCiAvKioKLSAqIERPQzogYmFzaWMgZ2F0YWJsZSBjbG9jayB3
aGljaCBjYW4gZ2F0ZSBhbmQgdW5nYXRlIGl0J3Mgb3VwdXQKKyAqIERPQzogYmFzaWMgZ2F0ZWFi
bGUgY2xvY2sgd2hpY2ggY2FuIGdhdGUgYW5kIHVuZ2F0ZSBpdHMgb3V0cHV0CiAgKgogICogVHJh
aXRzIG9mIHRoaXMgY2xvY2s6CiAgKiBwcmVwYXJlIC0gY2xrXyh1bilwcmVwYXJlIG9ubHkgZW5z
dXJlcyBwYXJlbnQgaXMgKHVuKXByZXBhcmVkCi0tCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
