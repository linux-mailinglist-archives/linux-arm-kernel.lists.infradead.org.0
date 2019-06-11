Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A4841748
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 23:55:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CC7f2W5fxOzwevjyDD7Ds2P0BRk6gJrqR7eqkbhzaeA=; b=h0YxRG3FdJeVJPQsYS3aDAyLid
	D5hqiTda5Zb3L+8VSplv4eghRV/SvZQ2nwg2DROaSVUs7MHH/bfalbiLdIPWwkz9Qibon3q2upE1v
	m+O6nJIUe+9D6ayNRRvNtGnDlt6CGaTgtzRgZbS+7dTYxxmA8ZQxIkcYcy0y7Weyb7AyhAPf46kpo
	EsyphfHPhk8oR16xE0D2yKddGf4zytSFy5MULLx4Ez3GR6A7KNkf4UiKyIbHFyY0334VX1NOGF7w+
	hCCd8cVOKTCTw9NmJvOqWkManUjzw8JSwPx2nO0VGzBIxz0VL3hybpWfRabO1tGTgn1HT7Gi1Fbtl
	UuXYrhjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haojh-0001CY-1h; Tue, 11 Jun 2019 21:55:21 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haojL-0000ky-4N
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 21:55:00 +0000
Received: by mail-pf1-x442.google.com with SMTP id c85so8286536pfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 14:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dpOYw6H5sSXAWPYrrV8Oq9GrgOxO6vd6WyMoz+YDOCs=;
 b=j8Y9LYbhdrOl8+Ff06oBDZcEbCwVSbiPnz/Vo3+FQlWIlwY64ldLMABhRyoZolgOnI
 d3AgD5/9hFPfw2ZFH+5isLn7hWSAInBDW4nA/p8MZMwAr+A5aKj7Vwdw+Q92iCq0T/oP
 6fDVdzIDpn6FrMfwU8wkfHPMKYo8dxtQEsYmor7ZhaxCcfuY+sfcsQVTn2I0Bgs1/cOO
 CdOxtrI4V3pwHe8xBLgo/AdmQrk0+WhLXmK9SbBF6tVwFq8bhdacgemn83FxU9eN6S6A
 5G5dHkOxxVzNPx2uWwZ53VxshO0dPDRnTYGY9WdDGLtMfHmX8HEUpV/jpRXb0D3QM0du
 /nMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dpOYw6H5sSXAWPYrrV8Oq9GrgOxO6vd6WyMoz+YDOCs=;
 b=h3qlAogkycliAI7BD3tsnQDtV6IIgTlXkyJrGM60JJpr13vOud017xDv5O1ICKSp1C
 1EgL/qfXzFbp+SF5x4Qn0c1EXShg3Mwjw8HlqLmsr7pdHtaFsRMpgCuqGsI4NX9OmX0y
 bM41sEbwb7Zc4piSi4kkezwWWOXz1LMRFPVu8EN7gbhAn0aX8zetbfrVBSjZa1piyRWE
 8gdm2MztVFDIi/dYNHLHMqb9sKCQ4ZgBWw0vMPozVvyRFunnU1uMZJrd7rlxepN0ImNc
 xG/VvDct0UgDyCeNihV0VogJxk6I4BZKfSFGxUVQI1RXHLv2sS6gaj5iyHIkAVUcDS7C
 5Fig==
X-Gm-Message-State: APjAAAX/kp1uIbn0ZUMJrFFNbFJBYPK1bNi20rlGmsNMN+rf/POIMY2p
 ktD7FwiquxC6hFZVVeaHuFSqxXSG
X-Google-Smtp-Source: APXvYqzELoAdkhlGDYwht+pWw2u8R41cpdF+7mnY62nqz2DllmtC2f3yYGikAv2dI1PmTRDtP1Fwng==
X-Received: by 2002:a17:90a:21ac:: with SMTP id
 q41mr29546924pjc.31.1560290098203; 
 Tue, 11 Jun 2019 14:54:58 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a3sm43519pje.3.2019.06.11.14.54.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 14:54:57 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 4/7] ARM: dts: BCM53573: Fix DTC W=1 warnings
Date: Tue, 11 Jun 2019 14:54:56 -0700
Message-Id: <20190611215456.10353-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528230134.27007-5-f.fainelli@gmail.com>
References: <20190528230134.27007-1-f.fainelli@gmail.com>
 <20190528230134.27007-5-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_145459_201128_DE2C7386 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>,
 =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Brian Norris <computersforpeace@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 16:01:31 -0700, Florian Fainelli <f.fainelli@gmail.com> wrote:
> Fix the the unit_address_vs_reg warnings and unnecessary
> \#address-cells/#size-cells without "ranges" or child "reg" property
> warnings.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---

Applied to devicetree/next, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
