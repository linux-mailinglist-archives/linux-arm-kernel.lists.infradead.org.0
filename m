Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A6BBD212
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 20:48:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cuG6Y+X8A0nheJKWK4ENOUu45lqlk25JgFJhLRbP3xo=; b=i5R1whtWVdw+Gm
	mWA7rVPLiwmdcx6vIkEdfK1c6N4D1qZzt+X0lEjFEGSJlI63BPIiTJL1Ut2rrv9WRpEMuBp7qQQwP
	katFXiCMEsBgZbCQwHzu2bNIx9YpaamkoRrgW4XfmbgP6uMh+z5MHmRAU/LegaCkCFJGsLLdEy9q8
	WS9+SlOec4VIskBbRgHEJZpy/Qek8B+ByohE7VMLtRN3hKMwHircbHfCOLWxpCwEgFsVXi/dDFE4I
	l94hS+rPiaq9NLjhAb1D1/7uhYe9PtoJMhB4K1upsqEIyMUBAORM9WI/314yTr3galRRRS1rPm92P
	at6LO+4B2awYHTprViUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCprq-0001wN-TL; Tue, 24 Sep 2019 18:48:55 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCprT-0001u8-NG
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 18:48:32 +0000
Received: by mail-pf1-x441.google.com with SMTP id h195so1885746pfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 11:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=/Gs2SEVlSqePfjrkCoHnuDKQ33QOLsDsvKggi3UpzbY=;
 b=tmo/F6UUeLEahLahDCvoebK/q7O5V1CjVObgCdyyxdlHJJ36yVWKmQ9Qb4epsZkEzj
 jP1bUcgBFlkrFGN9j4tnepo/sbGzuexs4JQovch+YSRHV889VgA2lha6jDC1fFDmsbvh
 9tiQ55lqv9DD887G+rPkvGtjp9ZRT7QwJ73NYlaBkgDa6lvXrtlyNeT2acH4BI8pfO1e
 G2XevQqdLoqY87hm2eXU0BQ9fx/nbvkpBbFpjdJSBfG1HrWx67FCM5gkR9SlhjIP5j7s
 m+roYGfPssgtEMVPnGMRBiV92hAXOkWkYvYOrSKPV88jTD6ovJ6/v2+nTMRbCK7yTVhO
 hhaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=/Gs2SEVlSqePfjrkCoHnuDKQ33QOLsDsvKggi3UpzbY=;
 b=kKy6YPuek2D981yMJtjGbw7YUoEPys8VDjc15+OO5BOGvezx0qKcaBqT8xXlmP8m45
 lZxU67bo/5dSrzBxNQ15s+woyebdPlQMtgnO++92G2um8bDh1AgGZuNecybJKIyLlITI
 g4N7NZW0WzbwpSiokX3kMcX00fjsIxcdsWcrjAJgXY2Y8jUAAcbt/mEYkyyiVziJxumG
 uUQvjMkLxTIWN3tO7R92QlSg0Q8qWIq0a2igD7JnuYYEOeaI/lwW835oYJKm+TFi4c6V
 ogradkU7TGkSHG80KjIiTtoyuK/K0nlLni+YcgGYWzeP+SMa2E42fDG79owv/UaAzE07
 Tizg==
X-Gm-Message-State: APjAAAU4AjVo05ssU1/CQQ2G3tjIUGkou/UF96cT+8X2WR9p7Pj5e0y2
 JCxzjnU94tsbP2APzGXrJGS4bOneFWGvig==
X-Google-Smtp-Source: APXvYqxVWTilgmitrceJD9q3n0Mnr9/BCYQFBcLpT+/7r0uQ5kcFbk0uDh0PSwWsPNYGdqtRAI8fJQ==
X-Received: by 2002:a17:90a:b001:: with SMTP id
 x1mr1622471pjq.114.1569350911212; 
 Tue, 24 Sep 2019 11:48:31 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id x8sm2440739pgr.30.2019.09.24.11.48.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 24 Sep 2019 11:48:30 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v1] firmware: meson_sm: use %*ph to print small buffer
In-Reply-To: <20190904174835.77370-1-andriy.shevchenko@linux.intel.com>
References: <20190904174835.77370-1-andriy.shevchenko@linux.intel.com>
Date: Tue, 24 Sep 2019 11:48:30 -0700
Message-ID: <7ha7at7cox.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_114831_767069_ACB80495 
X-CRM114-Status: UNSURE (   5.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Andy Shevchenko <andriy.shevchenko@linux.intel.com> writes:

> Use %*ph format to print small buffer as hex string.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Queued for v5.5,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
