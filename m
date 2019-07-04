Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E68D5FAEC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 17:34:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GrIOStkjO9RKlHwZAkTly7qaj/4vrCUpGyZn8sWn8Js=; b=HXUvNzt6CHpv9v
	cX4DurDHjkRgMPKEnN5yZS5IaOFaC8JI3eHpBhkiCgMDNbMjxVrcv18JPJLQiZHOBnO8rLO1sDl3g
	JfwvlnotiKVXX6h57BEHuncLK0jkRqyzBi/GhgIRJsW/LXbRjAFwg69MC47ChKGOZho35cV2IiaAW
	Ivflp0PJtL1vLSUTNoQV1dRsqjhwxXjkIMg8frTi5eUsILEPnBVQCthTNRRmyQocsA0tY3izRyMJT
	gCTj2uHsOXfMbuGL+6EugSU90VNA/Hr4VTnly0ebvU/aedYUJiVcI3uR7tgbe/ASoayqnUaYUWwfp
	MlPSml5VupiUVVzFBmyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj3kR-0007E7-UI; Thu, 04 Jul 2019 15:34:11 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::5])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj3k6-00071a-Hl; Thu, 04 Jul 2019 15:33:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1562254424;
 s=strato-dkim-0002; d=fpond.eu;
 h=Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=gou5Zh0HIbQCcM7c2CWEWnJ04+a+qFsD/mEWP+ODjjE=;
 b=J234T43gvxKe/gjHLYNWzODXb761nfwLa+rSoVZTcgN1QUyceMdxAcxi56dx2Ejmpd
 nADwFLWCb+5QjnsWFdixlfqxiuLLm6OAkv/WhdnczLpEKiKixPXVJgQEwPOrGbit24+3
 NOWVrz+AwH5T4r15ZGC4sLWDIhty7zsRqk0ovQUFcd7RGNEKXg2AzOJALYwVsK8umLUI
 hgLm+NBlFy3KoTimyAG6z1dDR20PMRwjH7nriy1b30zdPiDDujgDHHaqaFhBA2xrS62X
 ONag4hTK62Y+KA2SRFHFJraQY+wgwiLKGfpzvrgjjqWZczamd/UTJi+l4jQMlhIQGx7b
 Ugyg==
X-RZG-AUTH: ":OWANVUa4dPFUgKR/3dpvnYP0Np73amq+g13rqGzmt2bYDnKIKaws6YXTsc4="
X-RZG-CLASS-ID: mo00
Received: from oxapp01-01.back.ox.d0m.de by smtp-ox.front (RZmta 44.24 AUTH)
 with ESMTPSA id h0a328v64FXe11g
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1
 with 256 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Thu, 4 Jul 2019 17:33:40 +0200 (CEST)
Date: Thu, 4 Jul 2019 17:33:40 +0200 (CEST)
From: Ulrich Hecht <uli@fpond.eu>
To: Matthias Brugger <matthias.bgg@gmail.com>, CK Hu <ck.hu@mediatek.com>,
 Matthias Brugger <mbrugger@suse.com>
Message-ID: <100944512.353257.1562254420397@webmail.strato.com>
In-Reply-To: <84d1c444-d6cb-9537-1bf5-b4e736443239@gmail.com>
References: <20181116125449.23581-1-matthias.bgg@kernel.org>
 <20181116125449.23581-9-matthias.bgg@kernel.org>
 <20181116231522.GA18006@bogus>
 <2a23e407-4cd4-2e2b-97a5-4e2bb96846e0@gmail.com>
 <CAL_JsqKJQwfDJbpmwW+oCxiDkSp5+6mG-uoURmCQVEMP_jFOEg@mail.gmail.com>
 <154281878765.88331.10581984256202566195@swboyd.mtv.corp.google.com>
 <458178ac-c0fc-9671-7fc8-ed2d6f61424c@suse.com>
 <154356023767.88331.18401188808548429052@swboyd.mtv.corp.google.com>
 <a229bfc7-683f-5b0d-7b71-54f934de6214@suse.com>
 <1561953318.25914.9.camel@mtksdaap41>
 <84d1c444-d6cb-9537-1bf5-b4e736443239@gmail.com>
Subject: Re: [PATCH v5 08/12] dt-bindings: mediatek: Change the binding for
 mmsys clocks
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev59
X-Originating-IP: 85.212.144.69
X-Originating-Client: open-xchange-appsuite
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_083351_201946_F3BD1335 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:5 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Sean Wang <Sean.Wang@mediatek.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Sean Wang <sean.wang@kernel.org>, Stephen Boyd <sboyd@codeaurora.org>,
 linux-kernel@vger.kernel.org, dri-devel <dri-devel@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 linux-mediatek@lists.infradead.org, Randy Dunlap <rdunlap@infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, matthias.bgg@kernel.org,
 Ulrich Hecht <ulrich.hecht+renesas@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> On July 4, 2019 at 11:08 AM Matthias Brugger <matthias.bgg@gmail.com> wrote:
> You are right, it took far too long for me to respond with a new version of the
> series. The problem I face is, that I use my mt8173 based chromebook for
> testing. It needs some downstream patches and broke somewhere between my last
> email and a few month ago.

If that Chromebook is an Acer R13 and you need a working kernel, you may want to have a look at https://github.com/uli/kernel/tree/elm-working-5.2 .

CU
Uli

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
