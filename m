Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F1ECB3E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 06:32:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g8ogcuNqW5ZeswnK1lugCZgAiHYy5dlEo21PliE5d0g=; b=PiVd/FHedfu8Dj
	dkGm18S12pK3rBxq3qr9JmPhlmveNYBHs4/+zBCCSGJmE7dvESzNEQe5vt2kD9lYDJsvhHO+CnsvB
	bxi11Y0kEwnRKZoPeLiDrfjTMKNA882Mw+nB5Iuet/ZxLvf0OxZlfdrqskjMDbYYmVneTehtUWlHW
	xgVa1kwJCusN7wMpYTj4j0SDvZVdAwmLDtJ6v22xIrY1hYpeznGk2Ce9EZErbXFrlEWD0LMDiLc9W
	y+PR4l9pfB2SISa+U1bjcfDnPvupxN9iqMvXlhz29gpyJ24rYSiZAci7o2a7Mapr71afWOQROvW+h
	6TlvAHFDCMxTN9UuME6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGFGX-0002iK-MY; Fri, 04 Oct 2019 04:32:29 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGFGQ-0002hj-Bm; Fri, 04 Oct 2019 04:32:23 +0000
Received: by mail-io1-xd42.google.com with SMTP id c25so10621949iot.12;
 Thu, 03 Oct 2019 21:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U2nPEB8rA+jsS1ttiFP8H7C3sJ9YdpuV2AmlRtnRHNE=;
 b=FjGXRHWSfuV14PudxoZgKdFd8ltv961tGHcnbLKmjsa/8Uxx+EWhq7bj6GRhk0Y2Uk
 cBFZsicCoqGWvpVrqOYFxpSKDDcmO7jxewrw3RTu6BUhrTknGYpky0aitsvBQD6E35Ep
 IjUzkTkmOPkaZusSeOV42d1j3ZS+H788zPtSxBPhOEZKhwkppVUXs8PMfjT2oyx5Zrax
 MPTxOZBpZDwGqQCwLXDeVZCfi/scdGmfDlobCyraMDumz3+n+zGypsIDJl1TpJt5jx/b
 sXoc8jC3of4xksEFXbAUVC/OozUWrHyqDxEb7+xc2AsXvV5XrMeW+vNoADWPiFneIM8O
 BdNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U2nPEB8rA+jsS1ttiFP8H7C3sJ9YdpuV2AmlRtnRHNE=;
 b=iV+DCgSHX1kqBjBuwFsTv+fM6ij4J0VpPGpQ2dfD2djQ8BLH3M9z/kyAKLSO07A5fe
 EKeKC2AzW0IhBZXA5dqYXBd4PjKxe1wO0Su+nYNHpm781I7DlcWqSYrKij/kQx1eQirG
 2R2U3qvzFmo6l2flTbV2LonEOyYoXOEkaGei2N/G2gr2I4wQTggqsYrTPwprF3qdUOt4
 PPGLG7EcLAtIVYc5yfTfDyrIceDmuakQkea/HHL2LvhoGHoCjZGYSjJsfj9JaYcMa4F3
 +Gdg+I3e7hu0eEMwu5OkwoNaUHyWcZxBO977uCp98v+scnt9Viwg8NYIagmDx4xf0CPl
 4G0Q==
X-Gm-Message-State: APjAAAVrXddTzC0VQb/R3bB9FyTMpNrHdzDZZFESys2vQnExkEQQm+EN
 7uhUQjw8TmtEyEwdKqfN89Q0tl4LKrgIJnSCZMw=
X-Google-Smtp-Source: APXvYqxINY9ZmOJ0xUuloWso3ea+rJC4QHAazPL//m6xavj5isViQ/kZj9Vg0IapF0O5kPX2bKwnma2M8zAZrGTvqDk=
X-Received: by 2002:a02:245:: with SMTP id 66mr12608668jau.30.1570163540786;
 Thu, 03 Oct 2019 21:32:20 -0700 (PDT)
MIME-Version: 1.0
References: <20191001073901.372-1-linux.amoon@gmail.com>
 <7hv9t5vi5d.fsf@baylibre.com>
In-Reply-To: <7hv9t5vi5d.fsf@baylibre.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 4 Oct 2019 10:02:08 +0530
Message-ID: <CANAwSgTR5mnBLGSQcq6xj3yBvu6J1FDKdiLGfaVybtN6HqsAuA@mail.gmail.com>
Subject: Re: [PATCHv3 RESEND-next 0/3] Odroid c2 missing regulator linking
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_213222_402682_3AEB5E55 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kevin,

On Thu, 3 Oct 2019 at 23:14, Kevin Hilman <khilman@baylibre.com> wrote:
>
> Anand Moon <linux.amoon@gmail.com> writes:
>
> > Looks like this changes got lost so resend these changes again.
>
> Yeah, sorry about that.  Your cover letter subjects were quite similar,
> and several versions of this series and the previoius series arrived
> close together, so some stuff fell through the cracks.  Sorry about
> that.
I will keep this in my mind and do not repeat my silly mistakes.

>
> Queued for v5.5 now,
>
> Thanks,
No worries, thanks for the update!

>
> Kevin

Best Regards
-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
