Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A84FEC29B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:17:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pfd1HxQpZo0xKq0Vd5yKBAdrh94UydS6F+VePY7C2jc=; b=SGVitLTc4u97nb
	C+ITdE/UwlaEGeV/zEL+W6JM94IiSnzvCMfw0mF4WweXv+Ufg8UtiJnBDQzurDb18Z0ya+Mgic09j
	YaNpU256NryscJgwZ7o0zdDE+FycjQjC8GL1xhEuNG68R9wGblIumb3jIRDJaGevCS+jpsQPwPU+b
	d654BSRC9+R/eYYtdY73fIHncBJJpBMYlv08tvvjNiHrwzzcKav5g/wwK76h65JtP8rtJ7NMmExri
	TxhdvIIzdKPyBrVtRQkrO5+ORnYKZlo9PCRMc1zeT1EqOWVPk8flpU2jWqc2fwWhKjkwjMkaNnNkN
	N/gSWs/CiY9IcM2xxmgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQVsD-0007ON-UF; Fri, 01 Nov 2019 12:17:49 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQVs4-0007NV-Ka; Fri, 01 Nov 2019 12:17:41 +0000
Received: by mail-wm1-x341.google.com with SMTP id 6so8664260wmf.0;
 Fri, 01 Nov 2019 05:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v2OEhUt1Q5DjWbRY/ukSA2ISzuN5HR8Asj5+S9oagZM=;
 b=TYba00YOKm1UNoOABodWOurGOD9XySUI/ls9tCevPpKRV7+m/5LdsHgok0jXxvBnMa
 cGvdmuq4fuSQgqkNQlDSxk64J/nYtdYGW3o0F8A/416GZbXYKPq1tsg21tnAhjkyZ3Op
 nfnwUKSYU8jA/cuYZO/c0Z/L8edoNsb9knRgANvsQSDcBrVKbwMyfdIwPFQEj+KLWDh1
 9gLXFUdcWRFZWxCtH9H++l8LfStDKp7amRgqExGCfEBNQhh4L1eYFurjZHtuZKj0wmiF
 mYqMNzVYqsPIbupviWGdk4zvcXq+bZBlFNOSKY5Xz7saMtSQttZ33Z30i+nLnz4i+ePN
 uvYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v2OEhUt1Q5DjWbRY/ukSA2ISzuN5HR8Asj5+S9oagZM=;
 b=Q75hHcLBira4N954YWMsp6LyIS0VTcgPATmCsPPan6DN+CqmJRaQzE+r854WyO24bz
 rZy5nEf4uSGAtmFFE4LFEHOwiN/+KUzOWoiRZ9jmJj8zd1TQZb+r+fxD4W9tp3Txo02i
 UNbNXYSFjCcRWquFGVHp2C044/v59LC9G899DL3g4l/9Mr5K/4HOtuVCm0dbaXrVEzIa
 7+Tfre0yzKtxzfKqkAcGHZLGWQe7Zyj/dTo7Etink6nqSouiffQ1fMsliH99614usLzw
 dwrjQIO2mJCugEAPki83MPbyqm4Z8nTwu/gTYcTUc3v685YgkXohPsgUuY8ThsBHfO5g
 2xUQ==
X-Gm-Message-State: APjAAAV/AclXvDgMyhI5HAjtoHYmSFhPtBqr26NcE9ebDxmn9KESRstU
 icHT6g+Y5mC04k/aAa7t1NM=
X-Google-Smtp-Source: APXvYqxYSyOLx0qkxSJcpJrWWuP4L+Ic7bdIDsG7I7mX0FORQw4tVZXbSlaP34UV0F6JcHml0XOKhg==
X-Received: by 2002:a1c:ed0e:: with SMTP id l14mr9874673wmh.102.1572610658879; 
 Fri, 01 Nov 2019 05:17:38 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id u21sm6263928wmj.22.2019.11.01.05.17.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:17:38 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] net: ethernet: arc: add the missed clk_disable_unprepare
Date: Fri,  1 Nov 2019 20:17:25 +0800
Message-Id: <20191101121725.13349-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_051740_699230_5361C148 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The remove misses to disable and unprepare priv->macclk like what is done
when probe fails.
Add the missed call in remove.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/net/ethernet/arc/emac_rockchip.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/arc/emac_rockchip.c b/drivers/net/ethernet/arc/emac_rockchip.c
index 42d2e1b02c44..664d664e0925 100644
--- a/drivers/net/ethernet/arc/emac_rockchip.c
+++ b/drivers/net/ethernet/arc/emac_rockchip.c
@@ -256,6 +256,9 @@ static int emac_rockchip_remove(struct platform_device *pdev)
 	if (priv->regulator)
 		regulator_disable(priv->regulator);
 
+	if (priv->soc_data->need_div_macclk)
+		clk_disable_unprepare(priv->macclk);
+
 	free_netdev(ndev);
 	return err;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
