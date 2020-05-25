Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9A51E05A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 05:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XGTO5smc+bbVITgsSplooC0+Gx0kiZRP3Xjiyxsuags=; b=EeBpkpCr8FRs2+FHqaZ5eBkcQC
	47C37MvIDECVyL+FinpGIbgfQZ7fe94OU+OKdw09XDSlkIZ/wokUME+OeawAPstjhGUPu3nZ/uLdM
	THf7x4cd9+fSX5rAwn9WkMsf7hsMIBHD+0SCTwlfN9VXlUyr8k6mFdVrIjrx+St1CvAywae4MFhKB
	uTknKdMAOLy1+qKmhLYH7nxNuwfs5H6q9hMgilsMJv1oK6F6k2v27lDE9bPme8ZAFSeq+3MrUfIOB
	WHqm9tvXnp7TAdZYa+Ggdgh8f2isx2LSBkdhrBNTYyWKYQXoEtntgKMucbFOfKRYcDvyCvYx5QMvu
	0RNHpK8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd469-00010N-Eh; Mon, 25 May 2020 03:48:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd44C-000812-QY
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 03:46:25 +0000
Received: by mail-pf1-x443.google.com with SMTP id z64so3766730pfb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 20:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Eu+Ho/X9r7MZN52F/RomcQQtgjiQ+X/m9AkGhdRXtC0=;
 b=hlbOLQ3Eyjn+XvXsI6V94Sxye1id84iasnp0uBZIRnBKOkbSU9yUbIlq41keOh/DjV
 M1Ji6ztXni7ait2BVtg15UvWVCX+vU/nFT3K1YarMdgZiYIY/cRoUv0KGgjbkRIZqvSB
 63nHgdS7zUi+wtwJ8SqLo93B3tzLNNoTRj10+QAlVcCSbgjVGTKNRaeGDJTUQETf2BP+
 Lb7gvSbVZhR3G2KTWG73ysbzCiM2NYHYNaz7/L9i2dmlI2vdR+kVt1h9n0FOY+BSUkvc
 d1dqmHCCPP2l9PLtyGm+TcQLTBVFtA8k/HtwXqlArTw8rogH5EMBjOPtBKe3H89ggCO1
 zIlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Eu+Ho/X9r7MZN52F/RomcQQtgjiQ+X/m9AkGhdRXtC0=;
 b=ltGXZkjtzHWTBDu4IFQtB4zv3zBHXiPVffsJOcqx9kEPagygx8ivN95XB6NhhBaVFM
 p6lL27iuBVjezfd/5TWkKIstYky5+tae4E/420qNNpWdFhgjd049Ikq6wZ/vMTX+eE6n
 BDY8JC0Pqepfs9+qPLzw2pVVX8KdtcwuUNh9s37iy7hFYUskCKC+Po8yIHPAhJxSaA6c
 q8fUY4tc/VVOVgrK2TwvW/fNM4ft8QzUoALMIiCZYPjNddyAAr/0l7IYVZxcuI1nPEO0
 avORUUWQCf63iAcNZIDVIRPdb/95tdm9gzc9tOcpmkqalE1W79IB1U7XDyLVfKC615Lz
 8I+A==
X-Gm-Message-State: AOAM532yXPVggMb7+vT8HJ9WF04ykrX7W4yVEILUIhvaOeXhrOwJFAGB
 zgPFe11dHqTL8R55c4ONEL0=
X-Google-Smtp-Source: ABdhPJyCVTbNtcFfst1GMI7OlJFQdpx2wRpgu5bLKCThc6j672Jh+qV5W3K7wBvjbpx99E6OdCvgoA==
X-Received: by 2002:a62:8888:: with SMTP id
 l130mr14964445pfd.140.1590378378954; 
 Sun, 24 May 2020 20:46:18 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.44])
 by smtp.gmail.com with ESMTPSA id i98sm12152831pje.37.2020.05.24.20.46.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 24 May 2020 20:46:18 -0700 (PDT)
From: dillon.minfei@gmail.com
To: linus.walleij@linaro.org,
	broonie@kernel.org
Subject: [PATCH v5 8/8] spi: flags 'SPI_CONTROLLER_MUST_RX' and
 'SPI_CONTROLLER_MUST_TX' can't be coexit with 'SPI_3WIRE' mode
Date: Mon, 25 May 2020 11:45:48 +0800
Message-Id: <1590378348-8115-9-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
References: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_204621_048474_ACCFE3F3 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

since chip spi driver need get the transfer direction by 'tx_buf' and
'rx_buf' of 'struct spi_transfer' in 'SPI_3WIRE' mode.

so, we need bypass 'SPI_CONTROLLER_MUST_RX' and 'SPI_CONTROLLER_MUST_TX'
feature in 'SPI_3WIRE' mode

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 drivers/spi/spi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index c92c894..f884411 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1023,7 +1023,8 @@ static int spi_map_msg(struct spi_controller *ctlr, struct spi_message *msg)
 	void *tmp;
 	unsigned int max_tx, max_rx;
 
-	if (ctlr->flags & (SPI_CONTROLLER_MUST_RX | SPI_CONTROLLER_MUST_TX)) {
+	if ((ctlr->flags & (SPI_CONTROLLER_MUST_RX | SPI_CONTROLLER_MUST_TX))
+		&& !(msg->spi->mode & SPI_3WIRE)) {
 		max_tx = 0;
 		max_rx = 0;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
