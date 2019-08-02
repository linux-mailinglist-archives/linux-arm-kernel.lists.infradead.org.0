Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D91807F726
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 14:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=erXMs8ZO/KvvLW1xiC/ZANiQIC+K5OHrdxX61cJBn6Q=; b=jAHcdrwyVus38c
	eqRaPZNA8zCpyE+jdXaag93bhZPjASUO6AMdA8DaJM9Dk5Gcf6vHzjuuH3MiD6DxtyRokzkQc/1uX
	NmN6kcgyLAqsi5OhcHHJ5BJudHvGWAuGtUV7wcwJu9mrAXpLsCDtjYJj2qlJrT67e/EocpVOKJpzh
	7ff8ODvLsrhjm81uXz5jBbsBLtN/LGUc4dM5jVg+VzU0/asbMymfd1TAlLI4/L2oEe2jxhEOuV6+m
	TVuEMoy6Kng5MO7+zZwoxJcZEYzMHh9r+OT08qns/7lVDsosog/n19jTMWU4APN/SyNKlLVOUKX13
	djP2Sx861NwKKTuBMN2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htWwa-000774-08; Fri, 02 Aug 2019 12:46:00 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htWwU-00076m-2p
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 12:45:55 +0000
Received: by mail-qt1-x843.google.com with SMTP id z4so73758483qtc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 05:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:references:in-reply-to:subject:date:message-id
 :mime-version:content-transfer-encoding:thread-index;
 bh=wZuV9iTnorPpYcJSc12LvJcHQizMpp5ThU5JnwgNFH0=;
 b=j3cyt+kBa+U1k4Oie94AuURNhLASCUA5d0kKBUHRBRSH9OByDVHU/ll7kQcrH5U4s/
 WZC8jDtt74x5hYM/2Z/3W+W/IANP59OO9nDVbHkrHCE0unzh+f/mwXmcCqEyqWNqCaBb
 vicpNHG3+Snthp/9Psmn8WLX+FdZP/m0psDizCF7dud9eno8tzSp8hV9XIMIKopwYgOi
 2UC8fdCdTnpKpQWzM1x8AhdfquOAVxy7PzPwGVvuAWeGbiKrPwwXQN5EbJFGfISw8gIe
 7E4aSXiPeJegFIGP3/4T3Xjw0JMjTM6SL8uyRZC96zXZTNaJvVergjJdm6vW04o06pXb
 Q3sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
 :message-id:mime-version:content-transfer-encoding:thread-index;
 bh=wZuV9iTnorPpYcJSc12LvJcHQizMpp5ThU5JnwgNFH0=;
 b=aUfqA11Hlz/Ega2lYHLozDCNbhWI1U/Y6DZynzIlFLvbMbX/nwteScTqIhKeD3ETgJ
 XQsUxX8kM9KiMiiYlniAmdBQINcIJa/eAuUM6AwPHqWkmkZy/y2nol8Fds4lJctCyKKj
 n+gFbzOG3Oj//qw4v7mLRABArBuyHvBSr5zhSEfZ4dYlhF61lgYLBtd5OsyCoG/nzrCR
 kFQAu8gzLl/0BifeQ+vkgBjyJYfgDZScnNKDt/y6RzpnN0+d6b8GUwOKIzoJJdKqJkg5
 MSSyb3Tln41cOUfYTSg5l9JrEH+qOB1dkPpagvXpwlztil1K82bOXs6DIF4AFndt9Z8s
 GK7g==
X-Gm-Message-State: APjAAAVipuCo981cTY2iQ7zJvVXAxohu9tQzi4Q36aYcxsisD1fgCigu
 s57Ag1R61DkUo4wHihGY7YihXBYK
X-Google-Smtp-Source: APXvYqy+gNv+4zNs7Ca5SfQ+sABeLLKbu+hr9rdgZLwW94mZO2hPZUnk1RRh59YEb2uhgssGGTgTtQ==
X-Received: by 2002:ac8:34f4:: with SMTP id x49mr89347444qtb.95.1564749952429; 
 Fri, 02 Aug 2019 05:45:52 -0700 (PDT)
Received: from GirolesWin7 (magopq1505w-lp140-01-70-26-203-177.dsl.bell.ca.
 [70.26.203.177])
 by smtp.gmail.com with ESMTPSA id t67sm31688912qkf.34.2019.08.02.05.45.51
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 02 Aug 2019 05:45:51 -0700 (PDT)
From: "Martin Ayotte" <martinayotte@gmail.com>
To: "'Sunil Mohan Adapa'" <sunil@medhas.org>, "'Chen-Yu Tsai'" <wens@csie.org>
References: <20190727210307.17607-1-sunil@medhas.org>
 <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
 <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
 <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
In-Reply-To: <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
Subject: RE: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
Date: Fri, 2 Aug 2019 08:45:51 -0400
Message-ID: <CCEB9DED12A743098EF18BBFB9A10068@GirolesWin7>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdVImZtMIoqpH+KvRg+ggmIy/JU8VwAlnVuQ
X-MIMEOLE: Produced By Microsoft MimeOLE V6.1.7601.24158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_054554_127388_6A544BF9 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martinayotte[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: 'Maxime Ripard' <maxime.ripard@bootlin.com>,
 'linux-arm-kernel' <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> gmai.com is likely a typo.

Right !

Signed-off-by: Martin Ayotte <martinayotte@gmail.com>
Tested-by: Martin Ayotte <martinayotte@gmail.com>

-----Message d'origine-----
De=A0: Sunil Mohan Adapa [mailto:sunil@medhas.org] =

Envoy=E9=A0: Thursday, August 01, 2019 2:48 PM
=C0=A0: Martin Ayotte; Chen-Yu Tsai
Cc=A0: linux-arm-kernel; Maxime Ripard
Objet=A0: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
A64-OLinuXino

On 01/08/19 6:49 am, Martin Ayotte wrote:
> If my SOB could help here, I don't mind since I've done the commit =

> more than a year ago for Armbian ...
> =

> Signed-off-by: Martin Ayotte <martinayotte@gmai.com>
> Tested-by: Martin Ayotte <martinayotte@gmai.com>
gmai.com is likely a typo.

> On Wed, Jul 31, 2019 at 10:42 PM Chen-Yu Tsai <wens@csie.org
> =

>> Thanks. The patch looks good overall. The authorship is a little =

>> confusing though. If it was initially done by Martin (CC-ed), then
>> he should be the author, and we should get his Signed-off-by if =

>> possible.

Martin is indeed the original author of the patch. Thank you for reviewing.

-- =

Sunil



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
