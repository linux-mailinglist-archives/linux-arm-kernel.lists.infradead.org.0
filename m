Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19754160B7B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:19:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ON9iFgkYEYT7p9bVVMPcj/W7ZLk6Beaw9fEMEPhr0e0=; b=S8xIcBRq+Gztll
	4Ta0AMb5p5b9nJTPVk/y+tbkXd2zJh76kAGOoLt3QeqjHNd2lGNu6hkVitqjmxwb912lXO2q0skIn
	Psfnd+XUn5stc7Y196PEPWDxU5Ytv9LD2P852Q8MQQZjkzU/dCPQol30BA6XUsoS/Eu1fXVu6rYyS
	hVYDi2HBtX5OVsu9AQg+Qx6lw1aLdW9weT75aBxVSOfYQA2VZEht9Yg/HbBv891BVozxvpnwG6Ywo
	UQAQP17KLDdcp9aGVKA5nLd+WR0GQpaAp+S/KE1IDiCebBMmfyjwI0Ay8XF4TQmcffAdSnbuTEF4L
	2Nvx7PX9YuTuFZe+F1eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3agn-0001vB-44; Mon, 17 Feb 2020 07:19:33 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3age-0001ut-8L
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:19:27 +0000
Received: by mail-ed1-f68.google.com with SMTP id t7so7840838edr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:19:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wKr+1RTfgQ42+vPKzJm3cC+KqIteJwDJeivtrGtPfY0=;
 b=cmfpAWXxSSlYaGRxnt1PbguXb/ufnhgO6TMyIkMTD90GTQk6nCMLFmQmji1ois3cmO
 mYIURzGu8YKNrjxosNCIN9CGf5229LttrNzub5KQORZntb41lvTdWsxf+rymmaQkCE6c
 BdjAwC5cHOEtSXktirFAnjVheLWzXUmfd4yutKwZCIKifRnj1AeweCZRuzN/qBIbfNnN
 q9ArPCinTc2dbaZKWAZuaNTD2jauSyUfEjOaNCib1vQYrnAha2GXQ5uXnzgVTQlEoU/z
 8vUeJTAQaNSgxvnJsfd8ikOGaOfw173oMvLCCSlOL+iK0fJVf01ofAUPOPnWvtQLX0xC
 Og6Q==
X-Gm-Message-State: APjAAAXkExR1s2TmvRCaRepMpcN9xsRBv3V+68vmLYFkR43da/nqIyYr
 i4/zWM7i8uU6HXcbYWrzE4ieurXN/UI=
X-Google-Smtp-Source: APXvYqwQlWTljCO83ikaIf1BKFDdJWjnv0Y29cwo1YhXfXHd1tJdgAbc8QddcpujYhQLPHZpKhjjpQ==
X-Received: by 2002:a50:d59b:: with SMTP id v27mr12368694edi.169.1581923961847; 
 Sun, 16 Feb 2020 23:19:21 -0800 (PST)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com.
 [209.85.128.42])
 by smtp.gmail.com with ESMTPSA id t1sm831010ejg.32.2020.02.16.23.19.21
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Feb 2020 23:19:21 -0800 (PST)
Received: by mail-wm1-f42.google.com with SMTP id t23so15988259wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:19:21 -0800 (PST)
X-Received: by 2002:a05:600c:10d2:: with SMTP id
 l18mr20205144wmd.122.1581923961163; 
 Sun, 16 Feb 2020 23:19:21 -0800 (PST)
MIME-Version: 1.0
References: <20200217021813.53266-1-samuel@sholland.org>
 <20200217021813.53266-7-samuel@sholland.org>
In-Reply-To: <20200217021813.53266-7-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 15:19:10 +0800
X-Gmail-Original-Message-ID: <CAGb2v66Te_DD5zVU4_qAja0hSzcW0=bQZzwiWaVNoRQ3ms_wrg@mail.gmail.com>
Message-ID: <CAGb2v66Te_DD5zVU4_qAja0hSzcW0=bQZzwiWaVNoRQ3ms_wrg@mail.gmail.com>
Subject: Re: [PATCH 6/8] ASoC: sun50i-codec-analog: Make line out routes stereo
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_231926_101915_0F662683 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Luca Weiss <luca@z3ntu.xyz>, Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Maxime Ripard <mripard@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 10:18 AM Samuel Holland <samuel@sholland.org> wrote:
>
> This matches the hardware more accurately, and is necessary for
> including the (stereo) line out mute switch in the DAPM graph.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
