Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6C57020A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:16:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FdLfHif/fC7xgDnrD38mILF2W4g9jxMOYlA5doxKEh0=; b=anZtkM3sS/Zi+S
	IynkRitGjcA+wx677eULPriFNBIWhGmUY9E201HzS87zXFkIe8qaFdXnGXSCU9h2VGWuBZLi3WUDU
	MEgLCqURMlbBgJD0oILp7t72tn5CpUDAkaY4NfpXkxWyeemzramSUbZbvmEJTfd6QGkOrpfDurD5F
	HIp1ifTastLLGJGqLO/TxcQVYIJ0bgi1yDPzFq4FyHL0Dlq/tEYNlxo4yg3KGE5Tkt7qk8kNRaqM/
	qNHQwW+sEzKcfIm+4NeoICqgn3wwvKkL2+z4jYwQOqDE2Zzt+nndCEAVQ3Hjsyu/ONa8aWHxU+B72
	6eBoRugXMa/utsMUDO8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZ7J-00031t-0B; Mon, 22 Jul 2019 14:16:41 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZ70-0002y6-MT
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 14:16:24 +0000
Received: by mail-ed1-f66.google.com with SMTP id k21so40797298edq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 07:16:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UII2c5EhbAbqFUDh85V+lJXfLMStalyGD5swRyQDojM=;
 b=Zex7SPV3hhaVmn1C8glG5CGgxJu/uQpT8aemJtAez3ifBgoWtmmuE6JCZmLr1CIS0u
 31vFDa7b1jwDvsmXNgYxi4276/ZOWxED1RbY2gb6vkXITLPAo2AF5ajXCkn/yvfRSv3h
 bJmVqaeNX55daBrlURvHLhalQfFklEhnnLTEhLx952iJNo/V7M5wwhQwA6RdDYlHs08J
 WRQ1pB/CMEeapbx95Pu5cU3R1WIr7uctChpF/eXKR8zmt0zv8tIxAeI05yAUrh4amhIz
 YfBS0L10C0AjB1OsqXd14NgGoDIu5Gzcd7MTqaMKlq7T30KRw1ccKrqMNlG6cM1Qt3hL
 KDhw==
X-Gm-Message-State: APjAAAUiQ8WLJBTz1zeUuYmlRW7tkdTDKEwZCSfIKSyaiRQaP345c9ZC
 kXq5TMRNInos+C+7IpPzhxH6iVXsn1c=
X-Google-Smtp-Source: APXvYqwAdNU8gu89k4YDAxmtRumM6wKbwzOM/FnMtDGPdpzZaUmYR6WonWX+hnTfRlGi0VYAmsbFoA==
X-Received: by 2002:a50:92c4:: with SMTP id l4mr60864453eda.34.1563804979922; 
 Mon, 22 Jul 2019 07:16:19 -0700 (PDT)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com.
 [209.85.221.54])
 by smtp.gmail.com with ESMTPSA id fj15sm8136949ejb.78.2019.07.22.07.16.19
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 07:16:19 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id p17so39569741wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 07:16:19 -0700 (PDT)
X-Received: by 2002:a5d:568e:: with SMTP id f14mr30687836wrv.167.1563804979495; 
 Mon, 22 Jul 2019 07:16:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190722140817.21608-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190722140817.21608-1-maxime.ripard@bootlin.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 22 Jul 2019 22:16:07 +0800
X-Gmail-Original-Message-ID: <CAGb2v67QRQ4748U00o+V=-L06KEb5qwCraZD_V0CO-JT18yk9g@mail.gmail.com>
Message-ID: <CAGb2v67QRQ4748U00o+V=-L06KEb5qwCraZD_V0CO-JT18yk9g@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: sunxi: Unify the DE2 bus clocks order
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_071622_762489_5C2995E0 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 10:08 PM Maxime Ripard
<maxime.ripard@bootlin.com> wrote:
>
> The DE2 bus takes two clocks, named bus and mod according to the binding.
>
> However, the order of these clocks change from one SoC to another. Even
> though it might not be an issue in most cases, having consistency will help
> if we ever need to have some code to deal with deprecated bindings, and in
> general it's just better.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

for both patches.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
