Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFCD417B3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 23:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Cn8hjfLmMPKLOqiXh0pRUCtH6EMg9pYWZBQaP1dIYFA=; b=Pxk3YsyT0/2q/0JV3WWYhQkuo4
	bVFIlhqbaLz1J9j/krIL5lmn7oCGdZZ5Z3rs9G/+xi/tEl7DNunjHUhNomF84xtmfPltJ1rZTIyJm
	pW8wTb6SQrixoO1n6eEGkK/B9GUIvHDKE/UvpvXgAjW3AzCPvI6OQ51DXiKb/yh8fvJtFUvcYDDex
	VyNwEjqwrioJaiARa9gQSXUNcOefbyv06DZdLRr/UNkxYx/Pme12tmdQKYgOV+op/pxuD8H1qC+6Q
	PA3nTskDsfl7sX4JFkVPaJwKDxR2AIAV+e5MSCZConnY7tbgaKD4M8KFF5xOcyK4HJyhObI087cbB
	z3oatj5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haon5-0002vq-GJ; Tue, 11 Jun 2019 21:58:51 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haomw-0002vI-E0
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 21:58:43 +0000
Received: by mail-pg1-x542.google.com with SMTP id v11so7700261pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 14:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gJy35TgHH/v0hDshZHQdSlMIZMSrmjDdOipXSskBwzU=;
 b=i7WYzZyuIyUtNcO9F5iEujjMLDNtr/r8dUs6BFd2R/eAaJOxtr/0O1Wi+23stB3f56
 5BlZDrkhgGdUKU0HJejPus03Nojdf+dbNqTsbR8fO6QjeWKmPOoGB3Brdz0a3DbPv3CN
 XysKmCFYO8rJSumUiZm3FhZw6MHwhPn5x3djN339fZL873VWsqI1Yc9tOGRpd/tnS2k9
 +/cRJUy8TTDoSA0znxrQaJtQl7xjDy2qrq4tcz2bqSNo/wY9zRal5+csvEvHTot8yADw
 BiqTQ+cO45jW+MHRsxvA+SzR+x5EV1peCXQ1SeMsHJA2nqzlezWLavFN+PZYbFc59Hz6
 ut9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gJy35TgHH/v0hDshZHQdSlMIZMSrmjDdOipXSskBwzU=;
 b=phnl02TUt5kbwlI6qRWVD50iUNo8dCF3ZmUR6v163C1Lnq1Dz+D3HR1y1eZeS7zDOz
 rI+c5thR1yhV9Z9xHir+jMvCJzQWRNNGZ3bVoU1hYOCZ5gxumKs8oINW2Hm1h2jnwBny
 LWUM6Mn6bwxtp5I7MKRYXAFlyGe2PcPMEW55n/rND1yb75gGKlN7FWHLUNWSCoxkWPT6
 Ioy7b9YdJXwQqduEqVhK3j9V+B49H28eBWm5plogm4ie+VmqYBOo19TZq57qyKzPTy5z
 7LvIt7JrvXBG/FRJC9cLCHyLcvgSE2o3wHUJy15/ryvILpFPP25t+klHWiJbK/4LRzff
 57+w==
X-Gm-Message-State: APjAAAUwaanip94jSwMQFpvoy6ejG7f6MgPxBjfcNwLHa6HhXW///Ngb
 W1CBWF7Koo/p1h5rRgSpewo=
X-Google-Smtp-Source: APXvYqzkJHyddK7zVr84/ggWzaAIw8IL0RXuzddrzRjQxYgcia42pynxjQJg16MqYp7/tM48McjzmQ==
X-Received: by 2002:a63:2bd1:: with SMTP id
 r200mr22130911pgr.202.1560290321397; 
 Tue, 11 Jun 2019 14:58:41 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z126sm16434754pfb.100.2019.06.11.14.58.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 14:58:40 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 7/7] ARM: dts: NSP: Fix the bulk of W=1 DTC warnings
Date: Tue, 11 Jun 2019 14:58:38 -0700
Message-Id: <20190611215838.10758-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528230134.27007-8-f.fainelli@gmail.com>
References: <20190528230134.27007-1-f.fainelli@gmail.com>
 <20190528230134.27007-8-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_145842_477607_98580D37 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

On Tue, 28 May 2019 16:01:34 -0700, Florian Fainelli <f.fainelli@gmail.com> wrote:
> Fix the bulk of the unit_address_vs_reg warnings and unnecessary
> \#address-cells/#size-cells without "ranges" or child "reg" property
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
