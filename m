Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2CE1CEE56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 09:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sUFUMudh10YamYy/CdVbaz5Cn9wenrGv3DMqxluHMO0=; b=iZ9
	HHLEQsHHF/pmQ0F1qCQx37u4ntBw0Zd8w7TRKPQlrVmIqGrLza3CfYQvzAyxdwfMencSPbxaxDJQo
	56gHzysmIp4RTqvfrOre6Mx3JjXqXZdaUMaoidY+cESgIkchoSCbQ2GW0Wi1W7H2WQb3ST4gDpuxH
	0dhb/ItFOkrN+H1Gwfrm8gya4vDDCmdwouNuHxAKvQ84L9yUAolEQB3h+dJj5BpCp3tGAt1knjNi8
	/9LRgl9tfVPREW1Lt8wIRrTDIEKq5mfNpOmArDoKqIFL0acc7dHWQxd8cR1AzLiK2q+6mj5voH6tE
	u9W+wXnoHB1t0vIWbGO+zh6JHCTRw5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYPTt-0002LG-9Y; Tue, 12 May 2020 07:37:37 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPTF-0001te-94
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 07:37:01 +0000
Received: by mail-pl1-x62e.google.com with SMTP id m7so5037062plt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 00:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=oJmUzMw42DTbrXzzUYd7Ks8dtTTCqqycjSbTZSaOap0=;
 b=cCKlHK9w4o+2S8+AIROccI9rcib+ct01tsHVfjDmeGmiPY0Wn0Dc73yHEqH3sN4XQk
 AAIp3z9L5wcSNtfz5GuHrOsNcWQ2KyOnD3Mi+3rQJ0sEoBWI2zysRtB+iQg9+1Az0oKU
 5mDgji33MT0GJE0sltyWnLxivbDrec0xxp5llL9doCR9UattDLmvRJZA3E9cQ5Nh7y4z
 0KrhW+XCAj7kNMMAE0Hv36lDa+4DAVCVTwdoCieHnyRhaoVzpSBcSfY/3/29ZqBdYYIY
 rtcUQe5HLpU0QMXT3xVnsISP5f39SHz3Q6vhH9mXoYgiTZOhIjiDwgnZ6DipQhF8ulxU
 1jpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=oJmUzMw42DTbrXzzUYd7Ks8dtTTCqqycjSbTZSaOap0=;
 b=uEKhz3M13dBNm+1MR14mmQ+ngMguoWLl0iTgxPuwANf54hDDvhhYkjWqWGiL5728+l
 qEvqeheiFcierNKA/RZexQzWl21DxNnaWCqH12KaAEHCLIo43LOACNpgEJYQaG09Ic4C
 kUipBtALWVmt8r5uXLD4RWacOWHcD417TlBbaQe1VQ//X8B9ZFX2evSsuBl06ZwLO6/q
 021pCRIn+FKfNdw48bAdnrFAfC7HL0dl6Zb/9idbTRUvJchi0o1mt5pFF58fyeF2d/xJ
 vXf9dcwulyqWCydljeBcEsYpoDu9xqz5kAllCGtlSdTz8PeHzKwxRfWRZPTo7uLIWq59
 za9A==
X-Gm-Message-State: AGi0PuagPLWEvjFOJ0vksX7+3+eKGWTmS8dUBL7CNF9hPqVO9ELNQMJa
 DmSNBZ/9SLSCx9Oaqpi3a/c=
X-Google-Smtp-Source: APiQypKmaZEGYk0fHOt/kEOG6LJdizurDE2nYIhhfFMWLuELWHUAe3JTjq8LUtwXSDcZzGgVK06Iag==
X-Received: by 2002:a17:90b:78e:: with SMTP id
 l14mr27370151pjz.144.1589269015605; 
 Tue, 12 May 2020 00:36:55 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id 5sm11732471pjf.19.2020.05.12.00.36.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 May 2020 00:36:55 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 broonie@kernel.org, p.zabel@pengutronix.de
Subject: [PATCH v2 0/3] Enable l3gd20 on stm32f429-disco board
Date: Tue, 12 May 2020 15:36:47 +0800
Message-Id: <1589269010-18472-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_003657_329038_2A724729 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, dillonhua@gmail.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 dillon.minfei@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

This patchset is for enable l3gd20 on stm32f429-disco board
has following changes:

V2:
    1, insert blank line at stm32f420-disco.dts line 143
    2, add more description for l3gd20 in commit message

V1:
    1, enable spi5 controller on stm32f429-disco (dts)
    2, add spi5 pinmap for stm32f429-disco  (dts)
    3, add SPI_SIMPLEX_RX, SPI_3WIRE_RX support for stm32f4

dillon min (3):
  ARM: dts: stm32: Add pin map for spi5 on stm32f429-disco board
  ARM: dts: stm32: enable l3gd20 on stm32429-disco board
  spi: stm32: Add SPI_SIMPLEX_RX, SPI_3WIRE_RX support for stm32f4

 arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 17 +++++++++++++++++
 arch/arm/boot/dts/stm32f429-disco.dts  | 25 +++++++++++++++++++++++++
 drivers/spi/spi-stm32.c                | 29 +++++++++++++++++++++++++----
 3 files changed, 67 insertions(+), 4 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
