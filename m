Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC551A6229
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 06:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9lWnc87k0ZUTfi2pibBxasv8tCao6aG9T1owP0tt3io=; b=BewWq33/VcuKeB
	BRNpRbkP4F661NGI5BHbuQy6jUVBjeC4kaIwn7NYFWKp8nJg1stXXg0HE1qRntrIguxvFaDYIeyLu
	xJtB20yEYTdPqDnJv8qfsft0Scj4FmsjelTNKr4NksBTGyp5lwYrUHHgB5sfUhNa8oVj8VugjSS1E
	NGA/AUuIdmfejSwkNrQMIAR8kt7n7cWblr1InF7I7ucPuNd38wJMAUe2+6YFX/P0eravWGNa6CNAT
	ANLSdmXbMRfiPZ+VrMAaVCvZOsJxG11WbsGpPwR0IkYpQfvDNWlCyMY0IHxRjyu3jRtzaQJ/G3Dm4
	s1ZUuWj/yJs++XncEAEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNqjr-0004sZ-7Z; Mon, 13 Apr 2020 04:30:27 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNqjl-0004rn-7r
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 04:30:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id r26so8849390wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Apr 2020 21:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EbnZSiEMnHgTN/mDIIGBsmHUVd2FaPr3+pRi3ydpxdc=;
 b=Cn5OcRmnV/FsOvZHrEClH/vFv+XEOER2nAVKrUXl5glM2qw6RE+Qimvigbr0HpL5PE
 qW2u8NBJP2sTfEG0OOEVGdHU1bNJ5XdZ+ebOd2rMYFi+W3O2CpygbEoGuPTx7cVa6pjj
 5TgG1I09ERhcmzIfUj7B4P0aQJK5DJTQmrO2ZHHcbD1mTOFZC9qHG44Kgxbfnh99qeGQ
 A2R7xn7yy1gYCwHwHBpY25uKCIfYUv2deoLcjQkUMmq9s1uI+oysogt0rSqkip72k8Z5
 0XEj2P1EOccs5zvL+u4A7eY/kJ/1flUR3w82q6XDEfriPdBEXPUYBHAglyZT4eyki1MG
 R3Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EbnZSiEMnHgTN/mDIIGBsmHUVd2FaPr3+pRi3ydpxdc=;
 b=AORLAPyHOqLAcXc2G5szwL8U3BUWD8I0zeSrpMNb2TNl6mFwIPP/2xdOHvWO3534SM
 OgDxkchDlZYKtKke+2PdXqmI2guhf8KMary7xcZV297vKd81OrJTtl/UHlGo4Tlkhdu4
 3ksSerge3SaDiwM3oM7TXZwDn9HRJRLbWfn5ZrOxVJG6CJwz5uf6ryH7/G0P1OZJ+4SX
 jTF4GVJHszqdlNOiusKH4s8MCg2qGB7cRwUKHkj0tbP+iQW52ON5+N55UKoo9KyLQ7l8
 6llICZ7yw328Dk24hsu3XiUjBZ3rVHajY5/zpr311zWru3FtW2H87d7CsM/Gt6z6ioPg
 W/mQ==
X-Gm-Message-State: AGi0PuZ1K0ixSogBTqr/Hg5i+60XqMb8nPDbJiz6vZMcDD5QcVRCofBM
 4cpiFJKH+jbx87c9LSCwpHU=
X-Google-Smtp-Source: APiQypJqzsG5xE7UIV/7jHME578hAykas9gVz9OtdHMsoHKH3Nw7qn3xHFVFEoe++RD96wFYJR3fag==
X-Received: by 2002:a1c:7308:: with SMTP id d8mr17695093wmb.31.1586752217830; 
 Sun, 12 Apr 2020 21:30:17 -0700 (PDT)
Received: from basti.fritz.box
 (p200300D1FF00AD00593005B1452DFD52.dip0.t-ipconnect.de.
 [2003:d1:ff00:ad00:5930:5b1:452d:fd52])
 by smtp.gmail.com with ESMTPSA id b82sm13668229wmh.1.2020.04.12.21.30.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Apr 2020 21:30:17 -0700 (PDT)
From: Sebastian Fricke <sebastian.fricke.linux@gmail.com>
To: olivier.moysan@st.com
Subject: [PATCH] soc/stm/stm32_sub_sai: Add missing '\n' in log messages
Date: Mon, 13 Apr 2020 06:29:52 +0200
Message-Id: <20200413042952.7675-1-sebastian.fricke.linux@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_213021_304917_2946DD30 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sebastian.fricke.linux[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>, kernel-janitors@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 sebastian.fricke.linux@gmail.com, Mark Brown <broonie@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Message logged by 'dev_xxx()' or 'pr_xxx()' should end with a '\n'.

Fixes: 3e086ed("ASoC: stm32: add SAI drivers")

Signed-off-by: Sebastian Fricke <sebastian.fricke.linux@gmail.com>
---
 sound/soc/stm/stm32_sai_sub.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/stm/stm32_sai_sub.c b/sound/soc/stm/stm32_sai_sub.c
index 0d0c9afd8791..34a7c3d6fb91 100644
--- a/sound/soc/stm/stm32_sai_sub.c
+++ b/sound/soc/stm/stm32_sai_sub.c
@@ -837,7 +837,7 @@ static int stm32_sai_set_config(struct snd_soc_dai *cpu_dai,
 		cr1 = SAI_XCR1_DS_SET(SAI_DATASIZE_32);
 		break;
 	default:
-		dev_err(cpu_dai->dev, "Data format not supported");
+		dev_err(cpu_dai->dev, "Data format not supported\n");
 		return -EINVAL;
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
