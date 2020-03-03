Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF510176EED
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 06:46:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4YOm4uQv5UymwPafbo9purqpdQ3D5loQVZDNznjXiE=; b=gf3ibKzyEje/J0
	Fb5LYxA3lZ1DwJxihID352cV/L2c8bNI3/1x5STNH8cZoAEjlpOdl01I9IIdwC6OYS4FkPAW2ex14
	nTOWr/g0j4rq0R1uvoXVlJ5/zggxMLpu5J2PuY11z6EP0BXqxmfHHrC4KihoJ8th2/Dp4OrL5Gr63
	5IU+jTUyOPitpCXPrKVWsgGTSkSX6wg/sFFW9Zuzb86UlfSTa+8HCAtNAu66tcTRATVWhlKHWtvjr
	U2fnL8k9brs5gC7p+IOTVGNijVExa4M5IM5SFiS9yfLS4lQa12rQ3RiUD4vibaaI7Dcqp2eTXYDgy
	Ow1ftlonZawQkiAPrIfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j90NS-0005Fh-Cx; Tue, 03 Mar 2020 05:45:58 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j90NL-0005FH-Nq
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 05:45:53 +0000
Received: by mail-pg1-x533.google.com with SMTP id s2so989551pgv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 21:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wnuce1BEMaLV9odhtqcw36E1SWjthugxOUocptLg1eU=;
 b=tc6nFv9M1NJtZB1NZhMnMMn6js7Ufn+yAAM+nS75545HYTHHzMPWGwB+kN2uLa1y2j
 OS3lxooIOHPQRvcMKNTWdlCJzpZJOVZJfVXXJQ5jf4D99Jb5BxdUL2ZTnsUa2Ozqhm5B
 ypujDRL2Xo4QOYZdT8VqjznTd4gVeuj3f25IxpLMeKJKzy86YKYyHW4I4CLfTvbHS2L+
 EeCvqRAyLVj+GCeE3Zz6GRqojyzCP8llrgoppm0080Mb6QV7/xU2PjO0APxo9Z9ZzN0c
 BCXflIKd2wGxlOuTH+TRsmWSR3Gi5kZaCo44SDUX2B1awqkBIxoFxhN+LAd+nd42zwQO
 595A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wnuce1BEMaLV9odhtqcw36E1SWjthugxOUocptLg1eU=;
 b=Yapk2mcOhRFPBGnkYYu1l9DYpQA1MNTH366Pwqx8yjcqAUFVxOTGA9yL1SEgLJzGkF
 nmLyxV48wwKPnAsH2N89inhOM2LjShbTjHinY9V/uI8//MsryrqgN2pXGvHlboyQL6Zm
 pjZO0gVdtXI771RYQaAzMSVQ5k8dPgNrj37J/cXHMpO9bDeJvKgl4DSPxYTtUbnpbUYY
 Atu6VtVBSfr9/UFrIdn5DrjREUs0lcYeY0YVl2r1zA4jfoSso/VSKjlHbU2gQGqDOunj
 ugs9sjArkla9gqwIOn76PEQEZtoM0xlVtcQghNpuDpw+SAGPHuJfgVYsFUwE45h/XThA
 M67A==
X-Gm-Message-State: ANhLgQ1mSicVvfTEB4T/L3JJLai3pdDF/HniruLovUCzvtPM+LdpvW+K
 R2Gj3jhh8sn1ZYDuqrOSed91xQ==
X-Google-Smtp-Source: ADFU+vtlUTCjeL46Zb2JwQRGCfBgPlvipN94mw2Bm1lTmvsdnScdE/DSOFjY1YTYg9ynNjhLyHpAfw==
X-Received: by 2002:a63:cd16:: with SMTP id i22mr2517574pgg.79.1583214350354; 
 Mon, 02 Mar 2020 21:45:50 -0800 (PST)
Received: from localhost ([122.167.24.230])
 by smtp.gmail.com with ESMTPSA id m16sm22664861pfh.60.2020.03.02.21.45.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Mar 2020 21:45:49 -0800 (PST)
Date: Tue, 3 Mar 2020 11:15:47 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH 0/3] Convert i.MX6Q cpufreq to use nvmem API
Message-ID: <20200303054547.4wpnzmgnuo7jd2qa@vireshk-i7>
References: <1583201690-16068-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583201690-16068-1-git-send-email-peng.fan@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_214551_839118_13062EBD 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:533 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Anson.Huang@nxp.com, linux-pm@vger.kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03-03-20, 10:14, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Use nvmem API is better compared with direclty accessing OCOTP registers.
> nvmem could handle OCOTP clk, defer probe.
> 
> Patch 1/3 is dts changes to add nvmem related properties
> Patch 2/3 is a bug fix
> Patch 3/3 is convert to nvmem API

Should I apply patch 2 and 3 ? And you can take 1/3 via ARM Soc tree
as this shouldn't break anything.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
