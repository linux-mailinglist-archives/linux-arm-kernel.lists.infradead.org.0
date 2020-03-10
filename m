Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7351C18007A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 15:43:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:In-Reply-To:
	References:MIME-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXH9USwknSusUt+0fsYutL07vL5BKKPbcJlxKaC2RSQ=; b=k3v19YLOplAEfZ
	ir6/N4gAy8acYIegSwIY7OfntAbyFq8lcXWnv9qBo1hTPgssHU9R+9oV1slCnQ1JFgPIx/bYEHqd1
	1Bj0sWNlG8hPkh1gjSCmRNe86HU9Rj9Y7PqHHL0/kqwv1+PZgsDmNHxMYdcNHddRqTrx7y8C9sK99
	A3GzaQuui43xGYbfAsp4KWnN9QhSHiQikV0vhKoceZtMnploPc/2XemPcTYc/+nAIhknsdARpcJRy
	saoMxRlx8laJQnCPI6sSigMbDoVwjHLR78b/ILuDnYzOyY+iJrjcw1lunQbc6KJCkHoxwb6rJnfN2
	oyamgy9SbH1GzPhtPV0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBg6f-0001Ht-Ho; Tue, 10 Mar 2020 14:43:41 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBg6X-0001HN-VH
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 14:43:35 +0000
Received: by mail-qt1-x844.google.com with SMTP id 59so9828398qtb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 07:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
 h=from:mime-version:references:in-reply-to:date:message-id:subject:to
 :cc; bh=pWEhMoe4l6iq0oYxfBujMBG3SMiujJOffdEW1WoF0Xo=;
 b=Nw36Imque42S0hMa99xc+4Z88cRotKJvdXVgpIwC0WK1ooDJo2PtKY78yk7KVMWw0s
 4tH7ILAaT95x0yNULc6fokx3IDOFaZfBLZPqsebGjGMWW3tl0Lcxf0zVcqnlLSfSgir/
 HS5VrksyCGGbmLZ1HBvuRpmuX8Zxf7iPV/oQmUCcHuXeS7cAbqbwyAk9QESF7eeqEcgA
 U0gsSSZ86uCaaLF+NrFn5fCrtjCP0K/E0RbqbYVZlIY9lEqdUbAruiBDb/aQ135ARDMK
 CTMn9SqOP6zmMZWg9ignqHjoQiqItmaJBCIcy0XARGRdASWsnShmhVAS72N2eO1ZnH3L
 wU7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:mime-version:references:in-reply-to:date
 :message-id:subject:to:cc;
 bh=pWEhMoe4l6iq0oYxfBujMBG3SMiujJOffdEW1WoF0Xo=;
 b=hR5JcjdYr6O33PV4V1NEAe125O5nkQ6U4HHU7dwovXqzGhsdHl3WruURXtxJizKLMT
 UR9PmTX9QlNNHbqys/aONU7h7oosaidmz1X2NiQYTEYNsBU2da/mtvBvfVD5Pg7RkRxi
 btojHySRhhBc9oQ4W9HMNRPWQc56X8WGyPfyIU/5zZPkHjkFRJaCsbpqFDGRifFIBpw7
 rb4DQ4qu6NqjzZ3FPBG3yQF4m5qvQz2i9eIBvyBVw6UnUI62d6KMh1lSW58+8hKEjys4
 bbcvwmpcb0baTHq3R17ZTuV9gL/iZtoxuJgc7MQZmKti8JrsCewJX8pRf5jGlzTUh5AJ
 S/yQ==
X-Gm-Message-State: ANhLgQ09ouHM8rH0YRIqgeBPkIeIM+LT8tFNOpMh4vNRjR67Hb9A1cFL
 GXQfFofdd+X3oGie0KhBaUzD/x9PKjKTeQ==
X-Google-Smtp-Source: ADFU+vtpzk3XtElMA6XPij7i0qB3HEa7TbqtmVdMqbfk54BCD/do7486eRF4NyhYMxMyvyOFBDIDMw==
X-Received: by 2002:ac8:528a:: with SMTP id s10mr15195457qtn.162.1583851410817; 
 Tue, 10 Mar 2020 07:43:30 -0700 (PDT)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com.
 [209.85.160.174])
 by smtp.gmail.com with ESMTPSA id w204sm11562607qkb.133.2020.03.10.07.43.29
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Mar 2020 07:43:30 -0700 (PDT)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-qt1-f174.google.com with SMTP id l20so8158263qtp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 07:43:29 -0700 (PDT)
X-Received: by 2002:ac8:607:: with SMTP id d7mr19130096qth.271.1583851409490; 
 Tue, 10 Mar 2020 07:43:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200224193200.2773-1-festevam@gmail.com>
 <20200224193200.2773-2-festevam@gmail.com>
 <20200310143548.GA21213@dragon>
In-Reply-To: <20200310143548.GA21213@dragon>
Date: Tue, 10 Mar 2020 11:43:18 -0300
X-Gmail-Original-Message-ID: <CAP9ODKqGrgKVn2ico3tVeBkwtyto9PBby4i+pxhQc5t0e_CiaQ@mail.gmail.com>
Message-ID: <CAP9ODKqGrgKVn2ico3tVeBkwtyto9PBby4i+pxhQc5t0e_CiaQ@mail.gmail.com>
Subject: Re: [PATCH 2/6] ARM: dts: imx7d-pico: Add support for the dwarf
 baseboard
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_074334_055510_02551A32 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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
Cc: Rob Herring <robh+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Otavio Salvador <otavio@ossystems.com.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 11:36 AM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Mon, Feb 24, 2020 at 04:31:56PM -0300, Fabio Estevam wrote:
> > Add support for the imx7d pico board with dwarf baseboard combination.
> >
> > Signed-off-by: Fabio Estevam <festevam@gmail.com>
> > ---
> >  .../devicetree/bindings/arm/fsl.yaml          |  1 +
>
> Have bindings as a separate patch.  Or just merge it into patch #1.

I'd merge it on patch #1.


-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9 9981-7854          Mobile: +1 (347) 903-9750

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
