Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD83FBABD9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Sep 2019 23:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wH2OaSrEY8LLS/8dLfVrLypUCnB/n6vsPM82V28Z6XU=; b=EgLfX+834XcShU
	hUKh87gOBd8B4ff/z4bCAdHDCTs3+XzSU8II5asZhKwGVUzfElEB3S/9/WFwKyLxW8vj2wj0SA729
	Hv9L6p5x+EmJuOJTNTpzZHYafvtQef5dwmlsB4u/R//uLYmEu6uiPiqKvm87oZhW8aKr3aOe9dlFP
	SYCeN81oLrlF8T/Od8GfRwXo3WhMrFx5bCGfPJLs41RHxC26dYCkj1xtGqiinxGO+Ip3Q3cueM4aW
	s6e/SpsXXK2/t+UOjFq7D8tv+o7X0GAnTcfqbJQFc85ob4Scye7UNSln0AVrQFFyI3eSYeX6eKZxj
	KGyPIA8HZs03rDCuWmfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC9qr-0005df-KH; Sun, 22 Sep 2019 21:57:05 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC9qd-0005dI-FH
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Sep 2019 21:56:52 +0000
Received: by mail-pg1-x543.google.com with SMTP id g3so5221835pgs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Sep 2019 14:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=hImOzMJ05KmBv4g1KzY6JsfY72PzUxGoGBvm1paBJpM=;
 b=LGqOAQrDCH7KD0IkMFNMW57vSH55x+6WbDjd+go1NQvZ9dUbZq/P8FVdunL40Hde4j
 2vjuAIMWnuCjHR4/pgoOyWvSSlh8IA/OFZnDV3Mv+7twIMdSIc1Z6X57Uj6bPn6orJuQ
 +2zQy8jS4pFoMfk9EVpO2Pgg2XN+zaNhWWaeairm6fQz0eWyUwSPTWWRiOuilW+ltgsM
 Uic0to6pKBNioMBtARf8M26aP7qmc9AqrVgQs41vDHouCR5T0fSnKnJor93xoaEP7LKw
 8r9EtllMMhHvjvK7TD93tWAZqqev2J++wziySKgO5Aj1IWl+nkOmU25P0vYlR7hzA/6q
 Ob7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=hImOzMJ05KmBv4g1KzY6JsfY72PzUxGoGBvm1paBJpM=;
 b=rMIMFr9Jeb/8dcwlDzm0Ca6U9Vc0UawrHGNZ4wkVRr/DlAHehqAdDa5iv4KA5LCl0+
 621xjzg0xVDUgMdkeXo9lQeUa/5z1xdP2ZzCO34Y/6IbwwOSehc80MAXprV7dhSr8QFW
 psYvPeWnBp3/h5fiDTN/paRF0TTMi9PAhZX8Xmn9Z6F5dbmQZC2O1rjOCoENm7UK+6XQ
 fZtidV+9L3mwOgQdg4So5D+zxEzLHIRVlJpVTUidQ+C3RQZjoprAVXptU1nBDkte/LTh
 ZiNqcJmDHs/8G4sdNhvFcpyYHkdeNr4nuqcwozrflkODt1suqLQyROOW/L3rwf7QkHVT
 +wGw==
X-Gm-Message-State: APjAAAXmv/pZk3N7KiW2LqyYyr9TlbN13n9Hnx6CnQzSaxJmwiWcSzPc
 /FzUIGpbXbg2pCY8oXCOlM67Yw==
X-Google-Smtp-Source: APXvYqyC8GFMaLszqNzF5bZkrveNmENlCSweZt7S0Z8Fa1QnU/6Bl4atw0oHwiEOelkywLGWoSjI5w==
X-Received: by 2002:a63:358a:: with SMTP id c132mr26480848pga.32.1569189406117; 
 Sun, 22 Sep 2019 14:56:46 -0700 (PDT)
Received: from cakuba.netronome.com (c-73-202-202-92.hsd1.ca.comcast.net.
 [73.202.202.92])
 by smtp.gmail.com with ESMTPSA id e192sm10967639pfh.83.2019.09.22.14.56.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Sep 2019 14:56:45 -0700 (PDT)
Date: Sun, 22 Sep 2019 14:56:42 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net] net: stmmac: selftests: Flow Control test can also
 run with ASYM Pause
Message-ID: <20190922145642.55453135@cakuba.netronome.com>
In-Reply-To: <f35fa5a51f52fc1ef17a0a9ecd470e2a6792b3f8.1568887745.git.joabreu@synopsys.com>
References: <f35fa5a51f52fc1ef17a0a9ecd470e2a6792b3f8.1568887745.git.joabreu@synopsys.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_145651_516771_6A32B169 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Sep 2019 12:09:49 +0200, Jose Abreu wrote:
> The Flow Control selftest is also available with ASYM Pause. Lets add
> this check to the test and fix eventual false positive failures.
> 
> Fixes: 091810dbded9 ("net: stmmac: Introduce selftests support")
> Signed-off-by: Jose Abreu <joabreu@synopsys.com>

Hi Jose! 

Thanks for the patch it looks good, seems like you posted it from 
a slightly different email address than was used for signoff:

From: Jose Abreu <Jose.Abreu@synopsys.com>
vs
Signed-off-by: Jose Abreu <joabreu@synopsys.com>

Could you please fix and repost? Automation may get upset otherwise.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
