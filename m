Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5756161D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:19:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9HawrhhoaJju9t1sgrirxS6HIAIg19Zd0zlyUkIao9A=; b=Qd5zJMwn4lQgn6
	PmRUyzQzfRjlB8oJGRZOORqO6DjbnGAplGem2ID3PW4LpF3BAPLo1D3Vc9yiAXoVwLX8KUIRvRez+
	1JHoeW4htfBcLy4jkaJNpMQgYq2HLWZum6FCeLwxPDOITF4ALiu+N6F0zKtky14qViTW2s5sknxqG
	BKKpHbWzCHHci2n5s6HTKaX3LF1H8JEhSSP7jJ4bUnU98Dfi3sHY2c4EGOWFxfdWCE5grPfRAdq3X
	jcZ2VnbsOzLkjp+He4+v4a8Y78VVv5Z/s7ZMFME7DY92+ONbUp8+JQOC3Rib8WvLlIXGJ9aJBoHP/
	P4MsnDiWXYbRxVCUhlHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxBe-0007gq-Cf; Tue, 07 May 2019 10:19:02 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxBW-0007eh-Ti
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:18:56 +0000
Received: by mail-pf1-x444.google.com with SMTP id 10so8425702pfo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 03:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=G8pBOHepmnJE1/KzU1bAO4V1FlfT0xpTPU7pMbXBSIs=;
 b=YdndEbZRVbfd6JyBmK3pprG9Tj5uVoHj96dazYWHgaGCvSG9YackGco1b+A+QwJsbo
 2IB2Aw7AFIlHUyQQC8OO/PyGaFsdl3a+Ui0i9jS+jmmybLAhKCrIMdroPMTkQ4BW4r1J
 XSWyDl7hgLw/Es8QDdli57it39JXrJgf6xEww/UU0Hu1MQ8k/YIfVupnm/ShMrbpS40i
 TKaQf3XBE204zQnuxlm1FjbqkYCb/c4oOboF9mZGIDj6wFWS3BAOXO7ZYcUzlP4MtSsH
 wcYN7m+dzyRII4/Z/8oiuJ4u3KTWDHMSyqpYRZGyhveY3ro3kPT0yKrdQtrjvIXjMhrU
 OYyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=G8pBOHepmnJE1/KzU1bAO4V1FlfT0xpTPU7pMbXBSIs=;
 b=I08HSKSh8HFPNPUb6GIMjaCqNyL/0/By+Cl211G3m7t5hgzUcX/cWSaQosEbs06z5y
 kcftoMP1iq1YsrsTjoX0/P8MwbM3FlHr/JrMXMCFssOpwJ2bzEkGauopMIBtfI5619G9
 gavdfRFnnA0aqWLOBDHkT7GuoZBepxNFBEzN2pKsJ9ON6yiSVe/rD8KFTZSHmuIF1Tn3
 8ueD8hxDwswoBT/M6verXmOSPGtnt2vTGBKxc+mS1F8k4btIL81A20wBizPDn8xBVeaA
 B7zQ17zEEOXLNLO1GASMwv6ZnQ5CPfKR5fEI+QEb7+14bhlrDreqaBz7qv+5mfc+p6+0
 dkdg==
X-Gm-Message-State: APjAAAVTAL0Xvj+rpP8R4X7VnWbWqzMfAjnpvQU+3S9GVrWJI63CRjaG
 HZSYosOS2+8ZTpBSRG+si6s=
X-Google-Smtp-Source: APXvYqw0MpKiLCvqwe8N+6fugyXUfcfqbZxka1Z+eJC2FrcXxk4z1+/4iDtrJjM2rg8zYe1KAD/hYw==
X-Received: by 2002:aa7:9ac4:: with SMTP id x4mr14324313pfp.43.1557224333621; 
 Tue, 07 May 2019 03:18:53 -0700 (PDT)
Received: from icarus ([2001:268:c1c3:2283:c70:4af9:86e2:2])
 by smtp.gmail.com with ESMTPSA id a6sm26288248pgd.67.2019.05.07.03.18.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 03:18:51 -0700 (PDT)
Date: Tue, 7 May 2019 19:18:29 +0900
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH] IIO: stm32: Remove quadrature related functions from
 trigger driver
Message-ID: <20190507101729.GA3420@icarus>
References: <20190507091224.17781-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507091224.17781-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_031854_985600_03F25D90 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: lars@metafoo.de, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 11:12:24AM +0200, Benjamin Gaignard wrote:
> Quadrature feature is now hosted on it own framework.
> Remove quadrature related code from stm32-trigger driver to avoid
> code duplication and simplify the ABI.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>

Although this functionality is now provided by the Counter subsystem, we
should keep the IIO Counter interface for this driver intact since
existing user applications may depend on it; this is the same reason why
the IIO Counter code in the 104-QUAD-8 device driver was not removed
despite moving to the Counter subsystem.

Once user applications have had enough time to migrate to the Generic
Counter interface, we can consider removing the deprecated IIO Counter
interface.

William Breathitt Gray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
