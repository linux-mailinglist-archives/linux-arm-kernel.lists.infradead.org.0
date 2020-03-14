Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC8C18540C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 03:46:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:Date:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dlcMEeostSAuX/TTNNVpndTlCL+n7rLd1GDMpVPUYJw=; b=q5XMnnZ/6MWW1c
	fuu6azhMYrNEov5TgAgfSNmPFJGA9SOffv78qIKYk7wf5a69aTUb9N78u0ohCnrH0KDfJOzoI9Qol
	n3lZD5q9k5XWm99ML1qdNIC5CY7hmszE2HQdo/iJgNnBRgTYts4d4MPl0gZnDP/KDbwbvcmNOMQ8f
	osP75rzb0TPQfBQpEh17GY+krMMcxRwh80MFIyJfccRJfmhNqa08gBuJhIgASkDgJhZn9hSENAwfM
	UPKpagL6SuuyaJ2uyEj7ZYfmydF+8TFDfvd0WrfpmlkDf1xSBR71DICS72MyjZEWPhBVD27W8hIHs
	DK7V/YfY7vNwPhUsW0aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCwoI-0001rc-Qx; Sat, 14 Mar 2020 02:45:58 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCwo9-0001rJ-QN
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 02:45:51 +0000
Received: by mail-oi1-x236.google.com with SMTP id i1so11625166oie.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 19:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:date:message-id:user-agent:subject:mime-version
 :content-transfer-encoding;
 bh=uqgp9nq2P7ZvRxCwQrBR0MxjxUJHBBP/7Pn7hq62CqI=;
 b=K2HOVrXark3UOrXc5E/p9mcMLJuq1qJfdxICmHbpF0ClxhUfaM0ur/JagG9vhEOweP
 Mar8VIcT5nSrGoFAgBuCwVIfPNHsFgIKMoi8gZ3Jxgk/5Lt913YsYfAE4fnGziqG00sp
 NsD0GDLwICA6ioMBWv6VykDoXdiy5f/J9hY1mqySg5FZ3RPG10TdemXQdS/CuXcynAG7
 SFKEsy7tu4Jixa6EbXLqUurpwTOCvjLVDl1LMgwIe0PTQiohtCY3/qpDZnRnqjTDkyEG
 nYeY4uz2u8xFdo2Rq87Si+kpBybjMA/KBksOE0Id2HHj577Qtw6OvipFo3gLU0+iIt2N
 HPaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:date:message-id:user-agent:subject
 :mime-version:content-transfer-encoding;
 bh=uqgp9nq2P7ZvRxCwQrBR0MxjxUJHBBP/7Pn7hq62CqI=;
 b=rV+kFhWrbKgjA9uhsJZsYD1My9M71GQxQoj5MRpQ7Vn7LYpo1uFpV3fl0QsdOZqaRj
 5LcFDvKgzmTiM5lmxeKQMfSxyAZtZsLoRwaJHY4Kjav81TrI+P/Qctijj+koxEhTv2D9
 4IBeh8h5khznLFyXU9p1e+1RyG+i33ulv6QLSicLH+sVuowq2fyTG0pT36naYhmzgkLV
 8EVu/QjOVtHBigwaanZf95jyTkfYTkOHPgTMBI4rJdifvWJ2Tzrk1GXXMDmtRyE7wie7
 wn7+5aO7DdQNrk5ORpDhYKJPIjRSYwRVZ365xO2AEstTTQvj6bVhv8QRYvMrIM8Yd9Im
 +jBQ==
X-Gm-Message-State: ANhLgQ0bZ10D6Of8STiCYm2QZpZlVQPytAXABg+Kdtfva7TS+99gWsiU
 BhYkkLpF5IaSNgfjtivsYz8SC4QJcpA=
X-Google-Smtp-Source: ADFU+vv663IvwOnZTodwv/7Ag9RvbJMuBgi3216wrRb7JUZ1FMPvMmYGEfP/4RUoGat5m7oechY14w==
X-Received: by 2002:aca:b4c3:: with SMTP id d186mr9198346oif.131.1584153947704; 
 Fri, 13 Mar 2020 19:45:47 -0700 (PDT)
Received: from [192.168.1.70] (108-78-23-185.lightspeed.nworla.sbcglobal.net.
 [108.78.23.185])
 by smtp.gmail.com with ESMTPSA id s4sm45214otk.24.2020.03.13.19.45.46
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Mar 2020 19:45:47 -0700 (PDT)
From: JAMES CALLOWAY HORRIBLE MAN <jamescalloway63@gmail.com>
X-Priority: 1
To: <linux-arm-kernel@lists.infradead.org>
Date: Fri, 13 Mar 2020 21:45:34 -0500
Message-ID: <170d6eeb8b0.28ce.3dc35c28f12025f774c80a532951f58e@gmail.com>
User-Agent: AquaMail/1.23.0-1556 (build: 102300002)
Subject: gg
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_194549_860520_E7AA5403 
X-CRM114-Status: UNSURE (   2.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jamescalloway63[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:236 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jamescalloway63[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 TVD_SPACE_RATIO        No description available.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Sent with AquaMail for Android
https://www.mobisystems.com/aqua-mail



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
