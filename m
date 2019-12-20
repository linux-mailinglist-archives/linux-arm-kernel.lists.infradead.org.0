Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F751278AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 10:58:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BVVnCSB5xworkuA3tj5nc4I1Klw8lMaf6i0qZ1iuKU=; b=Gr+8d5oHnRorJm
	AfaeBjjsMflSooAsDvebjLe+1o5J26RAwZkWdAyF1LJxlFUA6X161XJLCdgEsBOB0/oksnTNNOcwn
	1oLAmjXp3KuQS/iIPpe3xJ5xP6qH8NvHvAd3nRTxghQZVBJR44hx3dvCY6B8WPHxL4uG5Z4nLvdJ3
	vpcmxCOpN98cWAufp4snaWp6th9ps52frEbFFWc7vdqA7q7WMiLbhixMfOND9rthawIEDZ0s/GfYd
	rfGzJMnHQD/aOz6B/q1kkNxK1l2kWOemYx1jodLaf5MTp9yRLFwijfdjR4xtZfesLskXz8wO7+Mi7
	WUWiVC4sL+/ZFWfoexyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiF3Z-0002it-GM; Fri, 20 Dec 2019 09:58:49 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiF3G-0002hF-RU; Fri, 20 Dec 2019 09:58:32 +0000
Received: by mail-ot1-x32a.google.com with SMTP id p8so11210317oth.10;
 Fri, 20 Dec 2019 01:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=74femySzIwPJDHG5x9zdNa+AfjyKAyPCNlMsQcYBmhs=;
 b=MfZuZxlt/5aTM+eWADTAw1+ssMbTLO93nEPqcsWwi/PUCtCdYBBhFq6E7twghkXe1r
 3hp+yhXgEhLdNM6yDFWsoqF0UQJYMvFLehRnFAl3EhwPF/6iUd7v5eIxRMCLrsEqTQcE
 XBYzzVrEKNlWwW7NqXkTst1JFiYNMcHIMQsY7U8IYPwqM+K6d26bjDgKuk9s2gXYSTsM
 WqWJpZAVCOk7XLCw/do4YsLvzuVHICVPZE7bnDmq/HSOPd5QXY3J8bzsK1WF5YqXE998
 QLU7JhuIYTf/2c2caV3odpCQxCTt55p17hrVFqe/W+Cr6y3NDfSoZgOuS2aWRN6bWFOX
 DJcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=74femySzIwPJDHG5x9zdNa+AfjyKAyPCNlMsQcYBmhs=;
 b=q9nK1CLyaL4rk9pyVZZQqanzv4XBzjwvdguXXF/DQDuR0i2afWO0+FPNQ7eNtU2CHq
 33YqRv7Rrj1x66HgC0v/e3sDiQ1sAboaLrSDdt6FfdM8ddS0Vx/iuk04bAOljGRRUmtV
 HCCTLbd2KvYuR75rb5l8Bx2kehKmhe2RsqfslZ00bXjrzFk8Ck103jRWQj+EHsQ4O6h0
 4dQ6aumz77Lz6ou+zLiXNG256wh8h/JXEtWv7jlaSe9+oEOG7Sj8kSVi4J9riJ4rvUs3
 lelyTdC2/BaiQL08zrXUNytXCNlpThnvmK7DaZhSAK2+yPhzdjH1Bl2ddAC0rADXxEsp
 5OrA==
X-Gm-Message-State: APjAAAWmqVqmF1QsomYxO3zCQhgDWBmnVWcL5/zNe2bs09/Ox/VD3GtB
 R+jhrd7wHZA7+2GOVYrWRjWSY4bfA2kVboPeRe4=
X-Google-Smtp-Source: APXvYqxNwbRenNNC3ee/+YtenI0dYdUuu8d469Q65xkASBDJ4VTai2GdRpnIGeCbklPsIf5o+/BCp8RjQDL4Dgpv5gE=
X-Received: by 2002:a9d:478:: with SMTP id 111mr13874039otc.359.1576835909674; 
 Fri, 20 Dec 2019 01:58:29 -0800 (PST)
MIME-Version: 1.0
References: <20191014141718.22603-1-narmstrong@baylibre.com>
 <20191014141718.22603-2-narmstrong@baylibre.com>
 <20191023201141.GA21235@bogus>
 <CA+3zgmsJPsvXgsjDQKKrSG+UNdY3SK+hKCTD2X3hGG+OXejHig@mail.gmail.com>
 <CAKgpwJWU3jB0DWEKE09TOV+YLceBFJ75ZirAXQbuhj8v3FwjXg@mail.gmail.com>
 <c32007f5-88b9-45c5-b542-b1dc4dbc76ea@baylibre.com>
 <CAKgpwJVHF6Ytdt9kq5SwiixFDLym_UPG51aXag1nVVay0pzofQ@mail.gmail.com>
 <45212db9-e366-2669-5c0a-3c5bd06287f6@synopsys.com>
 <ce35b6d2-7ed1-be2d-6e38-4c6e89340a40@baylibre.com>
 <CA+3zgmtWQwdJG5NT-t7__Mqt5u_U3m4+HEL6p4PWxx5NES7_AQ@mail.gmail.com>
In-Reply-To: <CA+3zgmtWQwdJG5NT-t7__Mqt5u_U3m4+HEL6p4PWxx5NES7_AQ@mail.gmail.com>
From: Tim <elatllat@gmail.com>
Date: Fri, 20 Dec 2019 04:58:18 -0500
Message-ID: <CA+3zgmsAWRYTqT+Q6t73ikYmm=L2gLmB6PEOUqLuMULfUcPKUg@mail.gmail.com>
Subject: Re: [PATCH 1/3] doc: dt: bindings: usb: dwc3: Update entries for
 disabling SS instances in park mode
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_015830_885639_A0D59C0B 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (elatllat[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jianxin Pan <jianxin.pan@amlogic.com>, Felipe Balbi <balbi@kernel.org>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jun Li <lijun.kernel@gmail.com>, "khilman@baylibre.com" <khilman@baylibre.com>,
 Dongjin Kim <tobetter@gmail.com>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 Rob Herring <robh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is still good on 5.4 and 5.5, and the following network lag
was solved by separating the USB and NIC smp_affinity_list.

On Tue, Dec 10, 2019, 7:45 PM Tim <elatllat@gmail.com> wrote:
>
> Just writing to say;
> this patch is still performing well on 5.5.0-rc1, and
> there is no speed improvement by adding DWC3_GUCTL_NAK_PER_ENH_HS BIT(17)
>     I get up to 3890 ms second lag with "ping -s 5120 $IP" when
> copying between USB HDDs either way, but at least this patch stops the
> crashing.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
