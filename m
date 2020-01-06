Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B30A9131B98
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 23:39:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RU/DYQhepdwDd7IFBvjI1WZ5bX6igmJrM6WhL1kSpzQ=; b=GQ6mbrw84qyaZl
	bWGxj19UKz+xaPGBNqD1a0AKqngjxySUZ5BOdCXoRahqNBq2/QBQ6cPNQsnYekUKD/foTo0GaNHlk
	Ss9L4GgKdKhsAiw+4tMPcu5JaWA8o2Luu+Lsq+d2D1v1fwibeL7i8vxEQ4ExABFe6dKCOoCeXOlPF
	a/RG9Rfl2HDau/Gf/5QlzZ8za0ytInFSs06bxx8VojoUmeSuGhaq70s9SlS3i6qJFzP23QyhrfO70
	6Ms4sX1RqGVbrgFJiCsj8OKDfbwRDSvJEkKPqMiCX7N/DDV1LXtV+Hiv4qyr9JoMKLoH/u14WX1hf
	B7NGEyqD7S8xinSZulCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iob1V-0006Wd-MS; Mon, 06 Jan 2020 22:38:57 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iob1P-0006Vr-GI
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 22:38:52 +0000
Received: by mail-pf1-x444.google.com with SMTP id x184so27604124pfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 14:38:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=S1FEEE6cCiUhglrJpwPJZH4zxshLjsGK5hYscNFBnAI=;
 b=sP0b+kqIgs0Wa01Ipe9vAxhjDci+QsIELt4Jxx3GKyj3kkoogjMroLTcTLoZGuzM06
 mcW7i8waLEOVEIet/Ye76nn5octXd9nntk0g25HRxSNdHGDW1tnZ81JNY415TaFdos2D
 MCOZQJikcAznKooB1G+TpbIcS9Z3ly1lH8XjbpetKzLOxgmrQUxlJvp3oeKbRkD2mvmW
 oxQH7yi7x+Hs254uljZlC1GiLQ7ZmgeChjbceYlBRG2BP+qdI7p8836mThhJT3yqS0Vu
 Q4MZ1yyewwbfkq37wEuYjld1cm824RztHw9m3lh+uwzu7tFa8g0DYsDV397O4TmdAs/k
 5CbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=S1FEEE6cCiUhglrJpwPJZH4zxshLjsGK5hYscNFBnAI=;
 b=QR+JUuiSZkTU8e2UQcjNcICnZnNny9wFMT7Ix/bNpBn99hdP7GaOj9s2IhmvXFK6g1
 KM6wES8g69e5w6Qona0wpsaTjumPeo1K9lzPFz3sm0BxZw8a1V1o42e4+c1GwXD1Ijt5
 Bq4pvtIGh3mKNHXlx7QQB2ABMytiRo7kKAsHty/Th526GfaiOgH7i+7jFQRYAO2KVnRC
 DRj3mTi7JMRSM4ZABnuDSVLHUFHhO4/aKNUNsJt9Sq2N+izsaW217i3foZmw+bq7bAH9
 h5t9p0TMs/3psplNcmKv7LxWkHNejxNCu1cFCviWMKIZITWhl0Nwqyat1uvEP13gWzfO
 FM6w==
X-Gm-Message-State: APjAAAWWUVQA7zi/WKHaQor4mhMNvs/JKbPglxVoo5/7iJIlsMsr7bWD
 x0NpZHhVZ4lt/PU5G4j8HOw=
X-Google-Smtp-Source: APXvYqyYMmJhcA1k5o0TuMxSxjZ9wt+SVCos6N/y/ApdDFDvdAdsTi6M/W6N+SOmLCd5twlY4rfB9Q==
X-Received: by 2002:a63:a508:: with SMTP id n8mr109588547pgf.278.1578350328970; 
 Mon, 06 Jan 2020 14:38:48 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id v8sm77416353pff.151.2020.01.06.14.38.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 14:38:48 -0800 (PST)
Date: Mon, 6 Jan 2020 14:38:46 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] tty: st-asc: switch to using devm_gpiod_get()
Message-ID: <20200106223846.GH8314@dtor-ws>
References: <20200104202314.GA13591@dtor-ws>
 <20200106185816.GA597279@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106185816.GA597279@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_143851_572619_9AAC6AD2 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 Patrice Chotard <patrice.chotard@st.com>, linux-arm-kernel@lists.infradead.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 06, 2020 at 07:58:16PM +0100, Greg Kroah-Hartman wrote:
> On Sat, Jan 04, 2020 at 12:23:14PM -0800, Dmitry Torokhov wrote:
> > The node pointer in question is not a child node, but the node assigned
> > to the port device itself, so we should not be using
> > devm_fwnode_get_gpiod_from_child() [that is going away], but standard
> > devm_gpiod_get().
> > 
> > To maintain the previous labeling we use gpiod_set_consumer_name() after
> > we acquire the GPIO.
> > 
> > Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> > ---
> >  drivers/tty/serial/st-asc.c | 12 +++++-------
> >  1 file changed, 5 insertions(+), 7 deletions(-)
> 
> What changed from v1 of this patch?  Please put that below the --- line
> and versino your patches.

I did not add a version or changelog because I believe this is
essentially a different patch, with different justification and
different API that is being used.

The first one was a simple switch to devm_fwnode_gpiod_get(), the new
one is abandoning the use of explicit node reference, and instead uses
standard devm_gpiod_get() to get a GPIO assigned to a device +
gpiod_set_consumer_name() to maintain the naming.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
