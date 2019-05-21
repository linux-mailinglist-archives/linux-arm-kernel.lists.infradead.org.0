Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F240254CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IdGndph4jEF2GV3PrYjXu9LecBv7Y69rgvOQb3kPdCc=; b=hda8BB1GbGOpl1
	qNLNRHBqIn0NcvFTrGRreOaKSvBcxSPn6/Ka7aZzHRt46gM0Hl94y0zgCK+k6Kb4lYerZLXYbOozH
	6TBg7zVdwtLmU7Y98D7swGBQJDQA5nyxpstBtukZO7lWGFr44SWGazigHj9zSIImtnDtgOJ3I1YiM
	flJAAWlL8kb3ZR/uUbwujZC3q2oUKGHof6bgVzSnI0Ee7URQpKblknQqBffml5uGt64widwCX+iAb
	K7gCkIjS1cVHCMQb8rUUhXTvbmd8RxNZSISZuonL6+NAhIAnnrk7C/E10CBOUS25eU5OyIMoiItPa
	41lqAdUuVVUpXgHuQvgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7FW-00018b-3W; Tue, 21 May 2019 16:04:22 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7Es-0000YV-UP
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:03:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id r4so19227839wro.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 09:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2HlGSUgjzAvNOVGdN7gVs7WcE2QF1w4iYjEKQyq+ki4=;
 b=nk+gBBhUgCbSkRmcV+nB7trvkMcW4vUROz49tmifqzka5udFk7R3G/03Vv+jPLHmZv
 1K8PlRVRwsSlXHRxHvgxCcChuBFKOFtLJddDD7d+w6nwDldotEIcZD3KA0SA7BFxSPnL
 PESoxYCpQ6sjqQtadTWZeTWMue0r2KlwSWoHYMhKeFivHCnK6MZEXNFPbVKXaGnNLyxT
 4hSW6zZNB47vCKCNCuBjPFpRxlMfuEUhgRZP/mS8nD1slaHsY2V0REI27EmCOypcwMrt
 7YWA6V89OWtERGMdc67BKM5mwxWM8p4taHMYj5lIphXcwRK7Edk/qFetKSqZdKqxSLq0
 a9Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2HlGSUgjzAvNOVGdN7gVs7WcE2QF1w4iYjEKQyq+ki4=;
 b=C8b2xbuJwLcRUz6qHFBOfoo/FT7gWNG+zvkYst6KgOaPqbyrBmBBOaro3y/XbeK7+P
 TodNsL7MvV2UywaTGMgGjpsJ3xuvd8F/aDQibsSxfU50NLMhJ9e6gOss3AYbc4IXt1HF
 9eT5d7T++DC7vgF3fQnbFvdjg4wXjD9HOdBPSQ8GV19anAYFCFg/ZPfs4z8P3/VFXXKI
 nplbld5AmW9duVmz7oaxlZ0QPQysjYbOEfYWNIqQMtk5sb2zTuzWo79OCkNFZ3NRNuB9
 O7YupMXNrJseqZKwDSC4YYQfmw13SMxDouSLf15PD9PDF/umc/k8wjIQ2hXdSHBgeMZz
 As6w==
X-Gm-Message-State: APjAAAXhvkU0bkI9NfWB07mQIu1pwls40ESI+S+dZAbeGUUKoHLIVt4O
 6iLnz57DZK4MMr90SQxFpG4=
X-Google-Smtp-Source: APXvYqz7pfnHqKxAsdVAsab620Fxs7RFfDYzuAYjex3e8EHMv4AKzoox2BUVgMZupSjlethDygyWuA==
X-Received: by 2002:adf:bc94:: with SMTP id g20mr31810762wrh.206.1558454621208; 
 Tue, 21 May 2019 09:03:41 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id g11sm6853811wrq.89.2019.05.21.09.03.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:03:40 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 3/5] dt-bindings: watchdog: add Allwinner H6 r_watchdog
Date: Tue, 21 May 2019 18:03:28 +0200
Message-Id: <20190521160330.28402-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190521160330.28402-1-peron.clem@gmail.com>
References: <20190521160330.28402-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_090343_120156_ADF8F33D 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IGhhcyBhIHNlY29uZCB3YXRjaGRvZyBvbiB0aGUgci1ibG9ja3Mgd2hpY2gg
aXMKY29tcGF0aWJsZSB3aXRoIHRoZSBBMzEuCgpUaGlzIGNvbW1pdCBhZGQgdGhlIEg2IGNvbXBh
dGlibGUgZm9yIHRoZSByX3dhdGNoZG9nLgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9u
IDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3Mvd2F0Y2hkb2cvc3VueGktd2R0LnR4dCB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3dhdGNoZG9nL3N1bnhpLXdkdC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3Mvd2F0Y2hkb2cvc3VueGktd2R0LnR4dAppbmRleCBlNjUxOThkODJhMmIuLmM1YmVmM2RkNDNk
MCAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9n
L3N1bnhpLXdkdC50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dh
dGNoZG9nL3N1bnhpLXdkdC50eHQKQEAgLTYsNiArNiw3IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6
CiAJImFsbHdpbm5lcixzdW40aS1hMTAtd2R0IgogCSJhbGx3aW5uZXIsc3VuNmktYTMxLXdkdCIK
IAkiYWxsd2lubmVyLHN1bjUwaS1hNjQtd2R0IiwiYWxsd2lubmVyLHN1bjZpLWEzMS13ZHQiCisJ
ImFsbHdpbm5lcixzdW41MGktaDYtci13ZHQiLCJhbGx3aW5uZXIsc3VuNmktYTMxLXdkdCIKIAki
YWxsd2lubmVyLHN1bjUwaS1oNi13ZHQiLCJhbGx3aW5uZXIsc3VuNmktYTMxLXdkdCIKIAkiYWxs
d2lubmVyLHN1bml2LWYxYzEwMHMtd2R0IiwgImFsbHdpbm5lcixzdW40aS1hMTAtd2R0IgogLSBy
ZWcgOiBTcGVjaWZpZXMgYmFzZSBwaHlzaWNhbCBhZGRyZXNzIGFuZCBzaXplIG9mIHRoZSByZWdp
c3RlcnMuCi0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
