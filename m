Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 297F913920A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 14:20:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3zUI5TnQ652ELVdRnVHaLbHLQih0fjZS6rVHGKDxDLM=; b=CDUVaGxNy3PKKh
	FG1Jk7kdIbPlmVrOi9VcFnlPoGwQDonp6X19tnIb8vi2JuStFNj4SPS3HUOslS+kaQpL5ti1ADmFj
	GkDJmu5hAgZATr/dDKy3cVOMFGGXlZgOZSLRP9hvk3svjjCHLsKhs3ETyap5gpU5vXOMSb8gcQYPa
	po6+RYC4cOhAQvaWMf6su28uEt1ZlL144OsNoCYtgH2Kb32abldTtsH7y8/DUomXnK64dDGN/O7x1
	ZitB6Ok/VTOLa6u2fju7JFSl2Gm2bHDSktdrB00aIQsvTHgfrvK0BpKlD8fqeM122XYgSua+ZKu5j
	bOmwdiwCHmlcIXLxtuJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqzdO-0002Au-NB; Mon, 13 Jan 2020 13:19:58 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqzct-0001os-Uc
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 13:19:29 +0000
Received: by mail-wm1-x342.google.com with SMTP id q9so9618041wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 05:19:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oPpAx4psrCRpvGxa+BiR5YMo0bdqOSs/oqk3OpqA2oE=;
 b=nWfPhbzI4KL3RW27J8sCj9bO4EGHIMFwVLTgYFDFOZ+ANyQXA2pSwjrFy7psj7W+ZP
 MdbRRjRbTVNa6CoYI1BBlpzinR2bYmiLozKhWnRabab4FT4Vx3/5uf9wX9S+Mh7gQ49Y
 UbKNk8qoaO0amqRtlEv712jO3q3egODBlzftQohOvXzHHA9w+447cDVyeZYK7s37SiOI
 EysUDLsiaCsJAeLVOYLgWZN0PRMMjrIpMHhRGoP+GiMlKdbzZXfhqxZRoqNj4Kxyq7ch
 zHzgEoZGyoo52b8uWmEYSsdiQyIw74mbx7/RNV2rlK1EuAjtm+9Ew7qzdTV/5taVURqC
 cEQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oPpAx4psrCRpvGxa+BiR5YMo0bdqOSs/oqk3OpqA2oE=;
 b=r2unR1wpEVzem7hX7VqcpI7RYrlNgXZ52DEx/HMEIOB/AFJLNFl9/oEjEH+uOqcuXh
 psUY0kPhzz1+l1h5iLigrXOTuQK8+R/PvvLjExBPPXzsAaE9P//x1OI/lNS/PoLVkZv+
 OYZSv2S+djXWBip/qWdxf69EOjlRFaKvJJ6G7ro8+mKFccl7cWPzznHgXgAwDUztoP99
 cvWoFtxVDv9HcAYzoYfOHqVwZhfl/idznMuJd1YJ690Oi8QX2ttoIdr5OnqNZkbZS7Iu
 iAt1t8iJ/o9tR5odm2LjaNqIGJOm/qm/X0hqOViD3pd+THeVmK6Wrh39M1P4AT0RFAOl
 G65w==
X-Gm-Message-State: APjAAAWlroywL7TDSnGZCKD2/Xo/aqWt7oAojiJkBFEA9LIHkNVABSQd
 kBCbJ6h/xnjFtjBPS2MQ9rM=
X-Google-Smtp-Source: APXvYqxn3ntfwmrL/v96gX5s5FIm1RyRW1Potx8vLiHtfqQr7a+LGA0J651zcltIe5UzdBDMZMOa/g==
X-Received: by 2002:a1c:a982:: with SMTP id
 s124mr19609972wme.132.1578921566115; 
 Mon, 13 Jan 2020 05:19:26 -0800 (PST)
Received: from L340.local ([2a02:85f:511:c300:1684:322e:585c:32af])
 by smtp.gmail.com with ESMTPSA id s1sm14200368wmc.23.2020.01.13.05.19.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 05:19:25 -0800 (PST)
From: "Leonidas P. Papadakos" <papadakospan@gmail.com>
To: patrice.chotard@st.com
Subject: Re: [Linux-stm32] [PATCH] net: stmmac: platform: Fix MDIO init for
 platforms without PHY
Date: Mon, 13 Jan 2020 15:19:20 +0200
Message-Id: <20200113131920.13273-1-papadakospan@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <c1af466d-0870-364f-1bff-0ac015811e60@st.com>
References: <c1af466d-0870-364f-1bff-0ac015811e60@st.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_051927_982368_FE7F2FF8 
X-CRM114-Status: UNSURE (   6.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (papadakospan[at]gmail.com)
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
Cc: Jose.Abreu@synopsys.com, jayati.sahu@samsung.com, f.fainelli@gmail.com,
 heiko@sntech.de, rcsekar@samsung.com, netdev@vger.kernel.org,
 sriram.dash@samsung.com, linux-kernel@vger.kernel.org, p.rajanbabu@samsung.com,
 linux-stm32@st-md-mailman.stormreply.com, stable@vger.kernel.org,
 pankaj.dubey@samsung.com, peppe.cavallaro@st.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This change affects my Renegade board (rockchip/rk3328-roc-cc.dtb),
(and probably the very similar Rock64) preventing me from using any kernel after
5.4.6 in a meaningful way.

I get the stacktrace mentioned before at boot.

Predictably, a command like 'ip address show' will hang since it probes 
networking but 'sudo' also freezes...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
