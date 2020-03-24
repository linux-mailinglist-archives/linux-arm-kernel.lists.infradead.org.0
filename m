Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA87E19087B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 10:06:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PYdubr11iE2o5F9eMA2lGQvShSg4P5SyNTVPZreRY/Y=; b=kzPoqCoSXz19GQ
	Yc7IVDwqQ2ph6SGpY3FxghGwG3z6pcLK7lO4gDmMmm96XFm3tfJSB5pDE7yQ8fJmCNYgpPyhriqZ3
	puf9v1N5Cx+gXv7Axzku2aO+9EERP0ur96hzJF0h3gjQ/dkvol6Src4CxyZLe80pQt3vysI5dGu5H
	dBEnT0Pq7e4R15XiIyoDjtr+wisi2p+/rqVr/6T49VfHsPbUAf+R/JDjpkqBk5MwrOOWsoR53sK0i
	boI6Fl3jDtovIjxo6bfiw66XcG9Jut3af+W7BhxVfR6iTAxQf289byTagEH5QkVEZJDKkxGI7jEFE
	AoJyf8oFvl59QKozjxMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGfW5-0004oU-Or; Tue, 24 Mar 2020 09:06:33 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGfVw-0004ng-AF
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 09:06:26 +0000
Received: by mail-lj1-x241.google.com with SMTP id v16so10680791ljk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 02:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uXJW3NYqkzBJPg9G4K5LGYBd3XGQpGvoVNtbcm5Oumc=;
 b=LbrZCbzmZx+Kfb1Pm57HvFHXuRgH444WCs3KnlNJ9YLTcdWzcACe0XYOMLFNxSnkVH
 wN88biDhrK+6HtUJj35VD4dFzg9cGhbGQzAhpXmOrRsqZITX0hTej20qj+VRoR4uNBfZ
 3tUJpYkAFikVpIS6Bp8KePAb0Bq5MOTC1YBDjTrdFWYIi4okAdmrkjf7eH+cDjfvswnY
 eNJfCdKTpTYuGH9iE99z6qcWe86ldjM8DxZknJTAJcGlNvFpAvX0Pfg/dQO7bRVTt3WB
 AbQPQpSOS9CCHsoTsEYTkgwyICLIzP9k6ivxee5YATXOa10Axoo/TbZqZvmtGqKAQxpo
 32Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uXJW3NYqkzBJPg9G4K5LGYBd3XGQpGvoVNtbcm5Oumc=;
 b=Z8F6RqFpQakVQqWKy40KVJL0MersFDhcFaCxhrJ2AKs1/y+bqPAph+SZiCiI1OZ8lQ
 hCfbEAgBrSu+QWqz/Q9mlLhxHUlRwfm0LHq+IjIzdTrmfeB79YJUOVcaR0tad1t0NTg9
 TmiBHzmc2eQzhDRZce2K7kZdP9Nvf53ubjuKXzbd0CHLvLzSszDnGOyEPP+H4aSfUMTg
 w36srsc6EYAK+SysMHS1AAFFnY9ewwJAgxzUWZCoiOCjWFmECmn1VY7xzJlzdA9M7sp/
 5NEzq4sYaVqbd03LXbwB8EC4YMUcOm25Q43w6Yc+BMiU7w8qSVD3LGPSdct1gyoa5tuW
 nSuA==
X-Gm-Message-State: ANhLgQ0U8yRZnzq//J+6bRY5eU+I857oe+U+44Kr/3nU9OcGOe0s6uLX
 hiKf36pNFHlAezWqtFUdS48vp4RANgyvj98em1Wefw==
X-Google-Smtp-Source: ADFU+vsS0Vgh95i3gLQkXN72OAT1r7M91nH8bLgfI97o39Kb3z7Gj4YEOvUgl0V1KX45mkYxQ/82vB1+XBwxrugyzW4=
X-Received: by 2002:a2e:8ecf:: with SMTP id e15mr17140251ljl.223.1585040782184; 
 Tue, 24 Mar 2020 02:06:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200323184501.5756-1-lukas.bulwahn@gmail.com>
In-Reply-To: <20200323184501.5756-1-lukas.bulwahn@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 24 Mar 2020 10:06:10 +0100
Message-ID: <CACRpkdYUURewhao=uDbKOmn2OnhBN6G6qnjUXgN2OBH_w_u2Qw@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: adjust entry to ICST clocks YAML schema
 creation
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_020624_389379_13C7963E 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 kernel-janitors@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joe Perches <joe@perches.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 7:45 PM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:

> Commit 78c7d8f96b6f ("dt-bindings: clock: Create YAML schema for ICST
> clocks") transformed arm-integrator.txt into arm,syscon-icst.yaml, but did
> not adjust the reference to that file in the ARM INTEGRATOR, VERSATILE AND
> REALVIEW SUPPORT entry in MAINTAINERS.
>
> Hence, since then, ./scripts/get_maintainer.pl --self-test complains:
>
>   warning: no file matches \
>   F: Documentation/devicetree/bindings/clock/arm-integrator.txt
>
> Update the file entry in MAINTAINERS to the new transformed yaml file.
>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Thanks!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
