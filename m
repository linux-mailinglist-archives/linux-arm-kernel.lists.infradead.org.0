Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0293C1C95D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 18:01:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qOJn3InIwXGv8idJAuuWX4w/Uzi4k5neKgCtc6Y4Ck=; b=eqHKsNJO2890pR
	ZSd8H3HGUM2Z8yRfXpipgrS/i/ujUznJw4xTAPLBKYkuyaEmpdCEaRSl3UV+ml4rrl+vJ8ulG1AJi
	yfNQDBA+/0c1l+n+gEfJDm0ChHGjInwYoMcPs0v/lZHDwPjqnqjjzonD+N8uwUSpkWB6DtOFyS2P6
	tRlalYIY9tLaDE/OlBUlwKGA8UFP0HmfzFSBj8XtIHTEoBFnnaijWFscNdsh49/l/xgyAsjkrN7aJ
	OaxxAFsWegiOI6rohUjVOkgSxr5KB8+OArA1fe+zcNDWtSm/+no7a/ffEo3au3KZ7r75w24qJpigf
	5flApOSX4pwFHJGxVMVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWixn-0006Nk-No; Thu, 07 May 2020 16:01:31 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWixb-0006L6-1L
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 16:01:20 +0000
Received: by mail-pg1-x542.google.com with SMTP id j21so2993173pgb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 09:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Qb1yn5t1IPTyFXfHjM+vtDPWSLy9RS5I827KfmdCCPo=;
 b=Ck3JfrNRWLl4iKhvrbrwAo0aqn2iznGCOPLQN7AZB/I6QIqhcf3pbDchgXrgdxsUQZ
 r09bBzmYp0r9JmGWIo+471PZRPGKWNqRKYmQcv0AWtZQeweBK//Zkc92SQm0LU/TKDRK
 cjaTyCgRetkk61Zos0idJaFJ8Uc22QzAahcybaafa3ZFz9Vmg/rbNgBfZ1LiQ6Gc2SSH
 f+PzK5YUS6X+9FiOIykPkrxpfpEPbSqwIsYXna7y5JukxEIAe25gCn5auYl0BnYGouvU
 Iu/s7vL+POy1Yz8gtgmUB7kqFQttbdsL2otyzz41gvINlKeOaaLCgpeJP4iCsURPZZb4
 EluA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Qb1yn5t1IPTyFXfHjM+vtDPWSLy9RS5I827KfmdCCPo=;
 b=oHf/aBrcZnER/cNvDsmY5YY0DUlYwOcsMji9jR3yAyfEuIvxBKWIrNOKvTQXz+2ojW
 t6BM1aMWHySY0GFAliE/pg/MLmrLUPjG3PjQfyFwAFnB4/vXhedh4EdgVJ6YFvCSQAxe
 M80DG1lSDYhpn7X7kTYFJGxPvlqRGbOYSw0ot7cxe3ptOoBrwGDiruFreRaQXlDdCWF6
 O/Q+4r4M0dvbpOBksD5CypgHC0c5VXdO7y0iPNM90GZD2Nw3TviE8ZQSA+LgNor5Nt9N
 37NYRfhWNgyXmiOB7CZ/vjBndWtLgISon8FtaDQ2h6p0/A5xDOovm9Ka2/U459roIpvA
 nGRA==
X-Gm-Message-State: AGi0PuZ2aqNoDmPhBboYmSfUmC5R0Dz/Wc0HzgLfFXa3AsVgorQ4NlqI
 0YY9dlF9A+iplpZCh9LsruXn4Qip
X-Google-Smtp-Source: APiQypIwGDuQgimi4V/sjeD/CcQ9q76z4XBPPy4eInhw8zbWKN+NgHOwT1svgrCLdMyW4GrW/Ppe3w==
X-Received: by 2002:a62:7d8c:: with SMTP id
 y134mr15435058pfc.231.1588867276268; 
 Thu, 07 May 2020 09:01:16 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id e11sm5321395pfl.85.2020.05.07.09.01.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 09:01:15 -0700 (PDT)
Date: Thu, 7 May 2020 09:01:13 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH] Input: stmfts - add missed input_unregister_device
Message-ID: <20200507160113.GG89269@dtor-ws>
References: <20200507151147.792578-1-hslester96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507151147.792578-1-hslester96@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_090119_099627_B6764707 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-input@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 11:11:47PM +0800, Chuhong Yuan wrote:
> This driver calls input_register_device() in probe, but misses
> input_unregister_device() in probe failure and remove.
> Add the missed function calls to fix it.

The input device in question is devm-managed and therefore does not need
explicit unregistering.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
