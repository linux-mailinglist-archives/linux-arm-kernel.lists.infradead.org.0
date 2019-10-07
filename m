Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AEE4CE79D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 17:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=slmpiggds4bipnDlmtp13NdaMW057X4K9KT+6jh/kQk=; b=Sx1ZpWo8Q5vXXA
	nFhT0C0tkW3+ih0rULti3eNTbOUphXJFwlc4X0gcVDhlnhaA8gE3yQ3BAGbyC2bj52FXktg/DKlO8
	as9CMheZhpMnXRQma65Mn9e63Ho8QkhkBgH5ZE/i3AdxYefWPQA39l3g076k4esR3A2j191GMJpvl
	UvSOLgj39EzsM1zncFPJV2erdHFbBrsF/RlAWmnMXup3tITopdaOfdnGSSXlSB5Far/ck6liDW2bF
	gu/Y2KUSAJ2Xwz52xHpTUkW/HZaK1EnJL6vdbhTtWR6234iOuBwwzrNasuYGAH+dmdnkyOq2Inf7v
	BM3vYtysg8I0+yjwfXJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHUzx-0000iw-M2; Mon, 07 Oct 2019 15:32:33 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHUzm-0000h6-45
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 15:32:24 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 803B2316;
 Mon,  7 Oct 2019 15:32:09 +0000 (UTC)
Date: Mon, 7 Oct 2019 09:32:08 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Gerald BAEZA <gerald.baeza@st.com>
Subject: Re: [PATCH] Documentation: add link to stm32mp157 docs
Message-ID: <20191007093208.757554b0@lwn.net>
In-Reply-To: <8d097a0486e94257952600bf6d20975d@SFHDAG5NODE1.st.com>
References: <1566908347-92201-1-git-send-email-gerald.baeza@st.com>
 <20190827074825.64a28e88@lwn.net>
 <5257eff7-418b-8e94-1ced-30718dd3f5dc@st.com>
 <8d097a0486e94257952600bf6d20975d@SFHDAG5NODE1.st.com>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_083222_161428_14732659 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 3 Oct 2019 10:05:46 +0000
Gerald BAEZA <gerald.baeza@st.com> wrote:

> > > Adding the URL is a fine idea.  But you don't need the extra syntax to
> > > create a link if you're not going to actually make a link out of it.
> > > So I'd take the ".. _STM32MP157:" part out and life will be good.
> > >  
> > 
> > We also did it for older stm32 product. Idea was to not have the "full"
> > address but just a shortcut of the link when html file is read. It maybe makes
> > no sens ? (if yes we will have to update older stm32 overview :))  
> 
> Example in https://www.kernel.org/doc/html/latest/arm/stm32/stm32h743-overview.html
> 
> Do you agree to continue like this ?

If you actually use the reference then it's OK, I guess; in the posted
document that wasn't happening.  I still think it might be a bit more
straightforward to just put the URL; that will make the plain-text file a
little more readable.  In the end, though, it's up to you, go with
whichever you prefer.

Thanks,

jon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
