Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAA8144991
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 02:49:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXY/7+UIrvtuQ6B/4fe1E7/745VCkOjnOcX7S3dXFd8=; b=dmYurxW8KX0alW
	GMxgKYmti1OQb59H6tNJOLtimlISmRE1o0AS2WPu6npUTih6MoZMI+uzvx8i1EcemzKM876Y+r/4D
	ClN6//YK6Viu9mOo7tfqtom2hgAd9FYh6oAsWpx/zCK0de2dNW59DUgCFm/p1P1EUHmlSBSY+RLdw
	ys2AUzu/VCIuRTDalQWHVJl0trbd/ELOi9Qx6gQvic7QSE7YO2rAWg6son7+GR2wTkYljCq1yhf66
	OKPvjIxl3qRt6fwrAq789T2ZkNl29vh3lDixSgV8ZJ3pb35uZI7NPNjjumrg2TN51lITZlRLFSZ7O
	ai15VwoVUFP6mzNPVNsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu59J-0004zK-GM; Wed, 22 Jan 2020 01:49:41 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu597-0004yN-Hq
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 01:49:30 +0000
Received: by mail-ot1-f65.google.com with SMTP id h9so4833588otj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 17:49:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=0e4U3NGNiyOXEG5BTPMvy4a3ChT8Vgud6kZ1y3h76T8=;
 b=LogVGLITMbG2sZSWZiVnM4tf6Yr5SFUcOiJj0KfelCbeFBK6SFPLpRgx+wWHRtnU0n
 azblPlZ0l/njAc/ZNer6Y0ryMpon4Sy5T5wozJA6me206IPGw93NjVYJN4HvsW+jQKQR
 R8eFpusZwZSyETDvCt9sM1Xn6L82WUrCmKRZkR4DG0piMNfP2GBsoBVAFkRTsybw2JKo
 wCLprAc0/FIva9zJ+H2+/AEJOgjiNwpHzjAJXEqFQbQR7mI5f6jRgd3n0FCkO/pYANaZ
 J/frzcguxXtfLJBo0mEwVAvvU/5L2XPRt62T2kh0JV02k/lJpmOkEKj6Wz/bEGCCtPHe
 V5Ow==
X-Gm-Message-State: APjAAAXxwbNy20cZUra+Gpn55pjM+F3Yxw5DbX3l5kKczXyaj99ELRHR
 qXftHa3Y6+E7iHxzh9KkFg==
X-Google-Smtp-Source: APXvYqyzugwvcOCdxnqZ6MUiET7xvXEGYjJRave83G82DjEs9h7Al45XqkIl1dKWyPMOnsVxk/NrNg==
X-Received: by 2002:a9d:de9:: with SMTP id 96mr5825817ots.222.1579657766225;
 Tue, 21 Jan 2020 17:49:26 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 15sm12537842oin.5.2020.01.21.17.49.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 17:49:25 -0800 (PST)
Received: (nullmailer pid 4806 invoked by uid 1000);
 Wed, 22 Jan 2020 01:49:24 -0000
Date: Tue, 21 Jan 2020 19:49:24 -0600
From: Rob Herring <robh@kernel.org>
To: Horia =?utf-8?Q?Geant=C4=83?= <horia.geanta@nxp.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: clock: imx8mn: add SNVS clock
Message-ID: <20200122014924.GA4746@bogus>
References: <20200116073718.4475-1-horia.geanta@nxp.com>
 <20200116073718.4475-2-horia.geanta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116073718.4475-2-horia.geanta@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_174929_592208_3A4399C3 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAxNiBKYW4gMjAyMCAwOTozNzoxNiArMDIwMCwgPT9VVEYtOD9xP0hvcmlhPTIwR2Vh
bnQ9QzQ9ODM/PSB3cm90ZToKPiBBZGQgbWFjcm8gZm9yIHRoZSBTTlZTIGNsb2NrIG9mIHRoZSBp
Lk1YOE1OLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEhvcmlhIEdlYW50xIMgPGhvcmlhLmdlYW50YUBu
eHAuY29tPgo+IC0tLQo+ICBpbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2lteDhtbi1jbG9jay5o
IHwgNCArKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPiAKCkFja2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
