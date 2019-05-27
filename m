Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C3A2B9D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:07:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1uILuVrsfNns41w9VGxBXzIg7zYyscGBXo1hU5mIOC4=; b=aT8RlJ5qHeFHio
	cKRF/WimaOwTqn6v3cnzH2rhUsmnO5qSwnw6LnFZeAoDdpUYPNGH3EJkyUSIuARwovah4fURk/TMW
	rbNrQxNn8pk42grDjEgDxrfbtiqSxA45DemyNgmLaWPw5uUQWj/6W412hbc0rYABHrF4N95Os/iu4
	nYzMF1iC8JxdDOmP41T6QPhNVvMkdnuwBTIA0lzrXd7nh6FbZt2hZQnFehfy8LyqJFnpQUqYWuZ69
	qk6TrYOrOR+XinzbJicYFldPIe3f1n/DpEWfQFJBPluTJ1NERxggybTi05nxsQp4X6WgpRfRO3cdG
	O/QVbh7ffTnvzfQNsx6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVK28-0004fU-BR; Mon, 27 May 2019 18:07:40 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK1v-0004Ro-Rj; Mon, 27 May 2019 18:07:31 +0000
Received: by mail-ot1-x344.google.com with SMTP id c3so4223373otr.3;
 Mon, 27 May 2019 11:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Go+cEvT6712i8SHCbemtxGqeOx5oRlOrOPZ06KB/6pI=;
 b=c9/O9xDnVa9qfikYjzqlRoKsnQFQ1aK7GaX4prunNHFVQi9lyKXEt5whBvlvqgwr4f
 MYJkoXO7aqsBngJhVDNbzgA0Xm/zPG0qgLojsI+XMfq/iCMDkM85hmN3YGyxcsAMa7Ru
 xGzJ0OFpzGTbs8pgA5WpQROAKPkqriqTI2MldOMqetEDIBG831p5j/elghOt6riHpUDA
 NBpSqB4w/o6MuI3CfXwfu6/BvCmI1szXdEnrBHgLEN+sBKmYdyRQwZwrVj+EEvpykBCF
 KMleOxni2gdGev/Vt1r2ZSn4iALPh41VUVUNZFgWJeOwL2IUUBTCJXMn+qaImEB7hmWx
 mLrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Go+cEvT6712i8SHCbemtxGqeOx5oRlOrOPZ06KB/6pI=;
 b=rVIe6qyIcnC4OCZEMEaCO4yHtJv5sTHgfCYq8194eQzP99lSJp54LsZyx79sQj6qxN
 /eSsbmL/VqE5kyNl5VOq1br3TVkhqyzFkcHMpx8DLSdkzNs3o4KawwbGUdRY7Jc8WY+u
 gi8xQNSW/yW6St67iN6OleQgxC5TSuU1BMOFVZbkl5eZho0VwqlP5tok5Rpq+zIrhud/
 opHQB4kGsrbq9RejPk8lqjm0uz6BjUTBbzBjtw55GBg2WQuAXuxPqvyShUbnEBz5grxb
 AAgZlzEfAq9aiV/N18kNN99ulL2WRdMUleQwcxgXfs1wyV3pSSESqlzJ/bxhPmNZZMRD
 QbRA==
X-Gm-Message-State: APjAAAXMvtM4xZnyDU8NF4OL556QxQkoSB0OJP7itNNzGvJ3UuVliqCb
 CQ9MKAJypDzT/HiHqAXfmYsdliLV8ITCX7XsO3e7c7XP2IA=
X-Google-Smtp-Source: APXvYqz/9+0ObAJ5pB6MCxeVNlNEP+TlRsEgZaxElNO5sPQsDcX55Fk2AEf9l6nS3x5OOn4JdfLsG7SfFNWlMdQSOUg=
X-Received: by 2002:a9d:7c84:: with SMTP id q4mr2118953otn.98.1558980446983;
 Mon, 27 May 2019 11:07:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190527133857.30108-1-narmstrong@baylibre.com>
 <20190527133857.30108-7-narmstrong@baylibre.com>
In-Reply-To: <20190527133857.30108-7-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:07:16 +0200
Message-ID: <CAFBinCDCvLUHVvk7q+1dJ54mjrGyNfaGDfmVCNeMns--s=nj-Q@mail.gmail.com>
Subject: Re: [PATCH v2 06/10] ARM: dts: meson8b-mxq: update with SPDX Licence
 identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_110728_015324_29365234 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:40 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> While the text specifies "of the GPL or the X11 license" the actual
> license text matches the MIT license as specified at [0]
>
> [0] https://spdx.org/licenses/MIT.html
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
