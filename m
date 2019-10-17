Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB632DB187
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 17:51:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RctVZ4fBpqcXsrWk4m13ml4OX5/5NU1e6xx2ZBY+R7s=; b=rGiaYflb2j9LlN
	dwJqa1dJGqoTarvCDoHFK3cBrqq3shmkyjtjKvd1bgFvN2TZlmYoC5U7PwFwl0P6cLOc4pFDR8Qyn
	5zvpCruRwYxkJ9WiNMAqZgtGpV8MGIL0wzVzkEpa5OoFSc09T/L3n68CcfEdfstlWeHsfCRLovZF8
	nPBxFugSA8jbGYBnFgVstzqPcW7BkghP56YAgseTZ7DCs8V2lXKq7NNbkRAhNvnQOX0TuMv77JI5g
	uTDeGKYepLNPaT8UZArc4XjMm974GV5AmbiqBllmV5aJLZu6zWF0J6xBr5UBNr1xmsY8im9fwUaMw
	vpuSEEBGt6GTyfWnKcLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL83N-0001I6-Ud; Thu, 17 Oct 2019 15:51:05 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL83B-0001GL-D0
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 15:50:55 +0000
Received: by mail-pl1-x643.google.com with SMTP id j11so1326213plk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 08:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=b48asfDAC1xOvEXigDKMakB9AKqpopPhTm0c4Dno6I4=;
 b=Q7IFc7xZihyEUYEqzdNDgyvTR+JI6j7aHEpGPTDNRLWFlTGtfJXqE8f/IF5LuZfSoB
 NhMzEJiu10zAYXuV2qqebPeZYmcXUWFfJjp5JZfvw0xtruK9pfFNAgwLjaz9XPE15Rf4
 +eKD6ZUWoxkShEtqkB3h2ossktGrIafeZiDCY5PHSA0JHbswdZku6KKCLRV6GohcJQUD
 jUSQR0wVwpXS6PUW9keg2SOVAUg11JAnXyN1HctnVfIAN52XRRZoFY2N+mznZ8BTq7Do
 xw08I2su8MdKZBdsPt1Gjj4wcOZKc/zcOc7Am1lPMNYunCX72Q1tQVOiKaUZPnRVeB7Y
 C67g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=b48asfDAC1xOvEXigDKMakB9AKqpopPhTm0c4Dno6I4=;
 b=WB/7yfyd0TFFhbiyQb410h7Z9arsovVsUBgKQ/IOQMGX5yTBrHskjYiDPSqjrO/JHx
 3GvicnQI25EeznvMyjHYlFMNBNFkaZwiujkeJndaTPmS9n81vaeg7bkq6kH2mNX6TpqD
 UXqrZDzOYZEd4lhqLdwRpi5p+zaXd/6nR7aDBPjlLQ5gxNmNt4BtllgVLyJXH0/xUIXy
 vsKcG2Ft2ehriX0ldZKoyNniLPYDOsuRcaVellNy85sK/thxxStAim2SPrbUrMJqMeba
 R1cC5avQQzV5tEngPKKhCmiBi7SfgXKA0hJroqaO66dhMI//vzzy3+pq4DpEvAcyPaYK
 8PLQ==
X-Gm-Message-State: APjAAAVn2GZkOuxmU6/8u6mZ4DPJqvyftYXWxgxHLp11GwbyckEnNsqM
 2Pys9K6xPHSJmrVPUezT3KGgGg==
X-Google-Smtp-Source: APXvYqw+ZkikFWm1K6Ej45vWuAlQyN+QOL993PvKnUyJp89FV9RW4sQzKjWGpiIpHo1wns2qTFvzxw==
X-Received: by 2002:a17:902:728f:: with SMTP id
 d15mr4802632pll.211.1571327452664; 
 Thu, 17 Oct 2019 08:50:52 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:d8f2:392e:5b44:157d])
 by smtp.gmail.com with ESMTPSA id z29sm2942555pff.23.2019.10.17.08.50.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 17 Oct 2019 08:50:52 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: meson: Tronsmart Vega ir keymap updates
In-Reply-To: <1571245657-4471-1-git-send-email-christianshewitt@gmail.com>
References: <1571245657-4471-1-git-send-email-christianshewitt@gmail.com>
Date: Thu, 17 Oct 2019 08:50:51 -0700
Message-ID: <7hwod3bcbo.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_085053_446571_8163A06E 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Christian Hewitt <christianshewitt@gmail.com> writes:

> The Tronsmart Vega S95 (S905) and S96 (S912) Android STBs use the
> same IR remote. The rc-vega-s9x keymap has been accepted for Linux
> v5.5 [0] so add the keymap to the respective dts.

Queued for v5.5,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
