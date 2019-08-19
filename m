Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AE994E86
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:41:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sevC3W1LAX14lNco33OcWJ0pXZuJ9PJ6bIbzF/LJ4WY=; b=mRXEzGT4a8UoEr
	R+OKohripRC1JwTvgodnIPhNGmYniSnGxgAXNho/agWdj9JTpCQEN4+O48cy5AlqjZpdw0ETi4Ha3
	/kvsLvjdB2iJONNAiYkFSJ3bLftPTozFbFjuTqTfbnP3c5kxGsKuddgQtVN6WqHdHsIiLwl7FDmBC
	fQTmoIEf6XfuNGBXx3ejKtT/74dpv+Jq92b28BuNwLSR8oDZIrwZB2SAPjwT6EechqK6f3BUfKfMh
	5VoIEXsxp1HpYEhj41I/svZuZbN5LVzvJ1FA3X4Tn3ri0qhdT5IVEVAU9uRbZgTeDahx/7g+cX/vR
	191M9OD5rr1eM3Kzx3GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hznWz-0007Bn-9w; Mon, 19 Aug 2019 19:41:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hznKV-0001o4-Pl
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:28:38 +0000
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 37FE022CF4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 19:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566242915;
 bh=QdaNHabnQATTellUgHWaDEel6AzbE1D6DIER1HVExlI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=gstHmsR7y4n8/TlcmRyVp7fpeg619sFIAkKdJrUKpyNuidXOZ0Lk2zQ9XdKBL/FiR
 00N2aI8kyV/WO18zFrtUiD0dqUqvPiLfCEpA1F6pZB9zvGSkLS1oDee6m9ucTCoITd
 /4ttCNaWSW8XhjqnWgVm5er0kEECob/R7MG9qKhQ=
Received: by mail-qk1-f178.google.com with SMTP id m2so2415658qkd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 12:28:35 -0700 (PDT)
X-Gm-Message-State: APjAAAWHgKpNRlqToUtBtov3raMYP4dzi9rfc+erEJI37l0vAho6jKPb
 3t/HPPCRqTHG1ALuTOzW5WFVOxtK3dy35tB1uw==
X-Google-Smtp-Source: APXvYqwY6xx42yDW7hIjSnvmaPLBEK8bzXWhlEUDN0Ijfco/ERLYthPs7Knhxi9ySvKBporN0rhefJyOXaaPA2GTIdg=
X-Received: by 2002:a37:6944:: with SMTP id e65mr20546914qkc.119.1566242914448; 
 Mon, 19 Aug 2019 12:28:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190816205342.29552-1-jernej.skrabec@siol.net>
 <20190816205342.29552-2-jernej.skrabec@siol.net>
In-Reply-To: <20190816205342.29552-2-jernej.skrabec@siol.net>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 19 Aug 2019 14:28:23 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLWjtGWuVrTQs7ikAQ7vLu26rnkk=Vo0q9punj-fM+UGg@mail.gmail.com>
Message-ID: <CAL_JsqLWjtGWuVrTQs7ikAQ7vLu26rnkk=Vo0q9punj-fM+UGg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: sunxi: Add compatible for Tanix TX6
 board
To: Jernej Skrabec <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_122836_159523_76F2E2C3 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 3:54 PM Jernej Skrabec <jernej.skrabec@siol.net> wrote:
>
> Add new Oranth Tanix TX6 board compatible string to the bindings
> documentation.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
