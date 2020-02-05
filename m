Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7FB153196
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 14:18:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kd/xnSDIHOeOX1wqiRzEHTXJE3wdlZFYlvM7RP7zlWY=; b=qPHA65+DlhLBNb
	UAFGkc25cOxn+dDXnt/2pWnn1+lQ6cfjti9OnoE75vni/pcj2dfdO8oVeOQXBelvjxxu56o57PqcB
	tvTqaO6WFbRztkNdGwRAc7K1zPb36PNPOM1zvUzTbakQs9sp14qMPYBJYDdemAWTjqU3jr0vDyTzi
	vVyAeo1PUihJF6oCMpyAKnaq9wy3m/7NhLogTghdIT3oFwwuUXdRUS2RpPaDKOBXM2z3TpsXcgInf
	T1Tldd5l3Sxza70W+d9xmWkq6UTtJtgpb5D0/ioBTBt6f1ZU2O+3Ezc3PAwEDu6O6t6mamOPnhvq/
	UtcUyI1PYlgeUzPOZObQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izKZa-0003yB-Qk; Wed, 05 Feb 2020 13:18:30 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izKZO-0003vl-TO
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 13:18:20 +0000
Received: by mail-lf1-x12c.google.com with SMTP id f24so1469769lfh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 05:18:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EIOMLYphMJpNA+7/cnaMKo4NunF1Filqifru8THYp3U=;
 b=sTE7J6DQIsGv0QoWvKETreLGv/z9NWRkt1ySeLStEXXNquRqTGI5xQkolWVEXK4XSN
 2anrWWTg3/tF8e2gsqsz2I2lAHrkPDYr8dpECqPq+ZpDlZRVGeMJVX6+nLfTaA/RBvZc
 2kWvSUP3ojXsh0P+Fo7p71Y3nu1cTQcQqys7obQzxOOweeJhPzzaJwpFgVovRiqzqDN+
 cDi9BcXQ8+zVYP0S95/zt/UyD1QRCkigSM+bg3vg001YMpTtGXERdnWI7grWJJfEM7Vj
 gyTRSjEIp1vyb6XGWiarxzW6/VNikU349eFyxeK40J236APIetGGBWtl5vncRIY6O+u0
 TLjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EIOMLYphMJpNA+7/cnaMKo4NunF1Filqifru8THYp3U=;
 b=dFPcuizM4zV4flQqmjprtL8ofQ/FAQV/IzsKBrHjbBuj9TB2mYj8WLynS/6mvjbMiy
 oXhVfVoQJs7+tFdQ8+SJDlcxdqgnl4So3Qgr0+DlfzaclBOl53N5STTMNMTJ8TOL6lkb
 K4hrQVrj7yStW6ZWhSb+oNNAfKX5dFwbG+kzRmTAX/jNS+Bd7m31YQAd6mpTffv/Zapj
 JpYMW83ccgkEwq0M4aUNONUgSPZa22tYf1rDPw2aIyhPRWcq7is9+6knRR9fiTzopTXl
 d67wjwCKgofL5K6uPpH8aXiP+VDETJLQd/Bwwhnt3UNC5GR4m1UnO2xjK9IJD1/pPl07
 ZiRg==
X-Gm-Message-State: APjAAAU323/BxxO/2Nk/pwx9XHGn3HyU1N8t8/YxKX3qz99BSi2ist0T
 ImxrFOlQ+WkgGi39shD7NUQzxJEFdIyL+FWVIgs=
X-Google-Smtp-Source: APXvYqz7hg238lNYDFj0O0BaiuXgC/SGZ9yyGOhY3T6SKPMpUxvxkI0EumUC/b9aAUMMrIH1Q4mOqdZDvkQKc2KYa6I=
X-Received: by 2002:a19:3f51:: with SMTP id m78mr17503275lfa.70.1580908696708; 
 Wed, 05 Feb 2020 05:18:16 -0800 (PST)
MIME-Version: 1.0
References: <CAOMZO5DMMCZPfwNbTaG8_iQhWg2K1XeO719nSA0Gsf2ywHy4jQ@mail.gmail.com>
 <20200205092653.GB2737@bogon.m.sigxcpu.org>
In-Reply-To: <20200205092653.GB2737@bogon.m.sigxcpu.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 5 Feb 2020 10:18:10 -0300
Message-ID: <CAOMZO5AAzK0QprHpKHaFOANjspJKd_4YaoMqAoGYG4KftcyiYw@mail.gmail.com>
Subject: Re: sdhci timeout on imx8mq
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_051818_968407_914880FF 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3VpZG8sCgpPbiBXZWQsIEZlYiA1LCAyMDIwIGF0IDY6MjYgQU0gR3VpZG8gR8O8bnRoZXIg
PGFneEBzaWd4Y3B1Lm9yZz4gd3JvdGU6Cgo+IEkndmUgc2VlbiB0aGUgc2FtZSBvY2Nhc2lvbmFs
bHkgb24gdGhlIGxpYnJlbSA1IHdpdGggb2xkZXIgbGludXgtbmV4dCBhcwo+IHdlbGwuIERvIHlv
dSBoYXZlIGEgZ29vZCByZXByb2R1Y2VyPwoKWWVzLCB3aXRoIGxpbnV4LW5leHQgSSBhbHdheXMg
Z2V0IHRoaXMgdGltZW91dCBieSBqdXN0IGJvb3RpbmcgdGhlCmtlcm5lbCBhbmQgd2FpdGluZyAx
IG9yIDIgbWludXRlcyB3aXRob3V0IGFueSBhY3Rpdml0eS4KClJlZ2FyZHMsCgpGYWJpbyBFc3Rl
dmFtCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
