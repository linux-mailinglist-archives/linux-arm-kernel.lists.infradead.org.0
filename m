Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0D113A3CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 10:29:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jM69cxZhFZrDc/CrcDJ04pjc5cWFudm2s1mBeu0ixHA=; b=i7YP2gyZVh414V
	38+oKeGcLypt1sbx6lFuMf8hUqWfFLWi3qJgM2y126h/4EH6/HLg5Y80rltPN+oZlmA+c4fc7JDIp
	wqFflUhKXrSgYAH6vPk719QiCmfoXxegMsUZ4rQpbDKWYAaWMKMwxj0yvJZgM0jRfw3arImcMvZ+q
	SKlQgY1kP+rRTd1q6AdFUeOFKJ3oop6msRq60eURPIr3vh/4BHyHdQudR9q0w99osbz/ln/EzQeAd
	ZK3rg7JT0d4Xa6wQmdvl80qb6N/7hUL96JoaNFDbpWuWQQ4jacmUmZshE0zyHF2HFXyxrjGu3bt/t
	3RpKxux0qpqlprnZZCxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irIVw-0001F8-Ee; Tue, 14 Jan 2020 09:29:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irIVe-0001DZ-7S; Tue, 14 Jan 2020 09:29:17 +0000
X-UUID: b5e3f63f73d0442f80521a4311c2fbe7-20200114
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=obHitPX8GLsII4ge1VnHnj/cKShOCpJhI4LMznwQgjc=; 
 b=cqr/UTNi7ft/7xV9PuHLMOwRuisOms/oXGh0UyWncBKBtLVPvCARzvlSIJHD30EBTtyKOjRzaON+ZWPHgFQyAFnJ0+zx+OOmZqsenq6PJl+JO8QhGnNg4NccIi4XFS7qxRlSHtuPtHhlUAH5NVeq6tDR6wxc992/6zK8xCp1Uw0=;
X-UUID: b5e3f63f73d0442f80521a4311c2fbe7-20200114
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <gtk_ruiwang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2001746964; Tue, 14 Jan 2020 01:29:09 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 Jan 2020 01:19:52 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 Jan 2020 17:18:35 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 Jan 2020 17:19:15 +0800
From: <gtk_ruiwang@mediatek.com>
To: <linux-firmware@kernel.org>
Subject: [PATCH] mediatek: update MT8173 VPU firmware to v1.1.3
Date: Tue, 14 Jan 2020 17:18:36 +0800
Message-ID: <20200114091836.19403-2-gtk_ruiwang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200114091836.19403-1-gtk_ruiwang@mediatek.com>
References: <20200114091836.19403-1-gtk_ruiwang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_012914_287922_06325076 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: gtk_ruiwang@mediatek.com, Maoguang Meng <maoguang.meng@mediatek.com>,
 Alexandre Courbot <acourbot@chromium.org>, srv_heupstream@mediatek.com, Yunfei
 Dong <yunfei.dong@mediatek.com>, Longfei Wang <longfei.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-mediatek@lists.infradead.org, PoChun.Lin@mediatek.com,
 Tiffany Lin <tiffany.lin@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: gtk_ruiwang <gtk_ruiwang@mediatek.com>

[decoder vp9]
Fix Netflix VP9 video play blocky issue

Release Version: 1.1.3

Signed-off-by: Rui Wang <gtk_ruiwang@mediatek.com>
---
 vpu_d.bin | Bin 2977008 -> 2977136 bytes
 vpu_p.bin | Bin 131180 -> 131180 bytes
 2 files changed, 0 insertions(+), 0 deletions(-)

diff --git a/vpu_d.bin b/vpu_d.bin
index a04dd793a7cbc88e633bee807f7c6460831f0096..75e2d84af31128f5bcc573c9925db02b3c210137 100644
GIT binary patch
delta 346
zcmXZVyGp}w6vy#jH2F8SNvy5+YcJj}_y8{AD2{mwr#wQzLB|$X-=RV*T{_fGovMfk
zRS|S>)VMqN4LE%Go^zIy3|m(6+_J7+$JCnAN%JyrDyCnTF6wc^ADGzoy8C;Fx6%zd
z=%J5e4Dj$jKhZaQ#y<z`@=@|4Ig(1RlA+yqDMJ(LruPpiM<4GbkJ|T=pYC5$knZ37
zKP{Yv(RmnI7{MrPI55b-#Tc^4!Gn(g<H%zI1r#xfDNJJqvzWs?7O;pVEMo;Flu<zy
Xt60N2Hn52;Y-6V#M!Q$PjePA7+<bBE

delta 343
zcmXZVu};EJ6o>JDkzTISRw;;zih_!w64~7dkI)BjcIqRLIG7j{HLN}ZF=+^E-I#P%
zCtrYI;>h6F#Nn6koHN`z{~SB>kFoP&U6YQa`_V9Po5ns$(}(2Ae=|wmOD{TuRQkmN
zxmU^Jjya&=|6HYYw3468Nu$^Ol3Ynw)KGm(1=6K9yVD}Ayh|SKQ$O2hJe%z^{=W`y
zqWCt79ptctJX{zQV6lu96yd=~fK{xagb-y^u#PG=u!$|yu#Fw;qK-Z6qk$$4aEK$c
RaEueQaf-7^6rVpY{s7YqY5)KL

diff --git a/vpu_p.bin b/vpu_p.bin
index 25407fccbbcfc39fcb7fe480e4c17224d135d5ce..8371bb1e4a5ddec4409b09705e0432643f50a5ea 100644
GIT binary patch
delta 9990
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

delta 9786
zcmZ`f4O~=JzUN#nhYK<eSB4o<oB;u)x3*%jhP$o~G7>J6GZq&6qJq^OF<Baf6}F7I
zBMOt6fyb4x^`#`^9ffwanE=fXOiQ=NOEg~j%56c(e6FjIihbzv{^#C7eP6$R#5w=3
z^Z!2od+>@RT#<ymOH*+QElEuiCTcKt67eMUrlt$8X)sz$#gafzYTI}r15h`7;>o}o
zvzZf?0q!lUc#w9_wO~TU>>Qjx3$h;sIjggixh2b~oPCBnxQxDR*#f&j?7Sk369Sbv
zVd11G-m8typ|9j6VGG@!H*0*+nCzVEoxToPyIgue@TXhQ^;+G$>rp6+-prdKmcd!a
zd}0YklIf^#jFr%btW#VB@K5_^c=`oNH)jW?Ivx=tkKBkDO0ybu;fR#4f2^UB7}n2l
zmt!RS&WwcE_zI#Uqjd45Sq(Y?5#k2=2*Y~!`f{M*d2ZW->*CKdp4yZOLK7=UY(fP&
zJ4s_T#GvQ|eqlq7ROwp0Z~J5GD>5rc{{l%TCFs0T!ui~2{(=Pyjh9BSVI*@N?n6S<
zU;=L#K|)o@igi^-rW7ae)vqI=f<$aj;A7M3*NMfkQ!7YvdIhP-s35g*nBK(ZnMvLg
za~HNt^N;U*#6m|*dW4p=BQ4&<TrnauSI~DJpD^L%QjKH^+eKP1a@fO!vQ;h;8Am8?
z!7tKFkN=kIew9AIV4~?o;F3(DA20|fM8@G3(JFRD3K0lttNNVu4+~~$4c<vn{%~Z(
z024c%^umH<lfk>NEjel<K#fH<!em4Wq-9};qZ|J;I<AcVW~qr<Y$p7By2SQK?9-rN
z%To0ykHHH^ndu(e6s~j`{lq3EeY|wtlsTCx+2qj^krR!DHX`mB5sU?(u@3t|`Yu{&
zf7Dfjw8p|@5Q306)kVU2*xM(;9_YJWWOgC!t>qfb@q^+TW3G!B?W$&q#2O^H2v2Rq
zXh8yl#Lf+W!)Rxk8!a~Syn@3^LpaYoZwSXIHv-h|vXN9T4{ibm5Nsp-AVRa9lIgdA
z!DwiEnT15yiC%!8NIO~BCRoW>So81`4nM?Bj7|{tM-XPU5u&vdJ`8Cs=0Q#P1cVg1
z4F4Rb;1wMD<{r+)kYjlj$uY)N_mB*CIQ$+C)%<r{ih8Io93e$;*L5WrOcA7=_l8Tu
zb2eh>l1#Hf5=Ie%qH5V%uhF_7SM{Px0f8G;rtm-9)bL@F$pY?&kO)Q~(+MHQ_253M
zViAKz1C}ZHI$+^I$+XCOACE4?^X8)ac@jcAn@4$kuKSrLhnRMLa6i*+$QpLgpGKK}
zqVR-hS1#IWw5l$@p<2&q-%)87@gdJhAspm{$V{6k#2E`9YYHLCv73-ERG;OYaSNCr
zJ()FS78m)g3!w#y;~+PHcs4L6eqO7ja;z~Ql80r>YSkn8EO$^F*jKpNE3Q=Jl&CH)
z1K!iYN4!SZmw|ldK?c)D4ie+jP-iaEvr`3OG|ydAU>JFxbhSyk(Hg7);{KiU++ALP
zu{v7AvOdQPs=~2l1)yHhzD`!hi@i?82Vy17&rcDUHj};L272Ym2e?WnjmV$u0wp9<
zt(U1bB9s-nh~o^%$Y*OCaeNFFmyfh%1<N!90WKYI_JwU_1*27`P<;v!fl4g1!Vly6
z9QNQ0=Cs-1JjFmr5gRF94-jyhF;^`wj9kU*%K+8biL|p<vE~MCO35{8zOg`mg!q|B
z#4pXakq-|8%)0V0z(53piQdVF2^5J#TA_)6-&N)nnzH<m5@krJvAc-Aa)dC)5o{-f
zvnxunQ))mlaH7ji*5kXLEdyYVTVE&XPVcmlzPF0&AtT62=2<whjA>n@hvqP(MX1*6
z=wu;Ogeh1X=^?}QE@Hs7aW!CjSMMm#sCRSRj*CQ*9TAw}HCn)Hpe>M&h8Cg5P8%84
z)<SkL!H^ZKndRQ9udx*49$2|ZU#}`&Y1Em^HT+<d)p(z)@l2v)>W<1(jhbAC)r0ly
zG|4nJQ&GwVaZWZnE<<N@);H>ZQ1WRm5|~mh@>vjwXF>dPSx4>(vW{$T1FOu?6bmI2
z>&_T49Ax2C?(x~PBojZ#QrbqwW&mGdg+_qDc)D(CaF~mT64Gu=zp06UmRQvlqY)6;
z?<oQwB*H;yE>e@?A{(ayb3#Z<-Rb=p8RK1$Jfb&}FG~QAT*Q9kES5}=h_j4oHWEG#
z`{B?vU~>#)M+#XH9>=U_I2Wng%T_4Hr~}?OSmzJP3+#<AfC=fgROpQT@(Q?5PRnAK
z5sqeVXQYXxQj9UhMzY?+ep>YO11_mT1BELCR-pnfq+y;>;(iq4xP8CyqpEO4c7-Y%
zjmj=d1QmeGMqaxl#Tmh%Bo?fUNWLcCMymSfx{XTsus@!bx0kOsX4ps#l!z-Orfb}f
zA!?KQMuZx(jbxsW<lXCw{osjq5Rf3&)udGO5IW{d@L$TF_s4Ane=-5_Fv~EX831nt
z87|_k15anXKdxq$iwKVce<te=T{c6`*R5o*d|g$YVev$MU~Jd;C|+Mz8(;3aI3lEc
zFU1s(xJY6&h_#%I84Fp`mw@TmTmqdnk{9b-<4gKor2Y;F1fAg)j$!3p`~ckA`7zK#
zhGa((hKvx+6`C;k{RpbmAaq)`k?Ftbhp-Ul{Xz(~1IiaT%fL4gQ{S@~^C44;M@9q}
znXw-P+gT|dg(j!8JZLsZU_*of|E8HiBH9_A1rz*HxUkLff{XNbg1G!q_*4EepwoLu
zyD^`2cwX1_7SPX#L}i6bX>)eIQ0#%y|0(1oYlcN|{K~Ju>Rd=xaQ;|0(pa#1zS7?y
z`4-s0Ld$Zsfn|opu?oQ7mDHA5%0Lb9fG5JgF?ZZ0li>E>3YG!)P{x>Su(LHgyC%P}
zbqHXr;)a69Vr!s<ooum@jk#f4)i&Vn9AkAUt@X<hVPRVY#VKQ~;;b;iy&;F>5Kqt(
zbZ;14-z4rfDb8JhcU_3e3`55Af;2G$e)mU7amYw$B$^gRTHH&)pB|_rQ12+DxUm!q
z?)~o8;#t@jrh|S-5h|-jJA}wEU6=01t86sz&w6f$lm6>J&vB8#;<ow{VSs}RoV0x1
zy7YE=Kj!1laj{5C=<n2i03n*a3MNq`W^%&pO7K?+6sdq)pbwOQw+cO~w+dL809%M#
zvf^VsK*1(Z&sqh`a)DjE(L4*U?kk-KJOX>I*gZ)z+sRlZlfp3g%75RpA#oJf^3q*l
zVw;)ZtDFwEgi*0=k-(HHD`9d#X08Xu=_lLR4m?tl5+hAi;B6c3$?9IGaorWXdA*8I
ztttQ}XW|TZoUznK+%VOWmc*%!{E$VK^%{1+D*Xklk|w%akv1hp6%BVdbW&BCSjxO+
z=w2jj1jV{yMK2PPqmfaM_s(zN&hH&|wNAd}O5ox|FAVgRi{Nn5CPJ&OW0g^2CdMUZ
zl9dMdsR`Ds1%OXkB<RmA5)5aPyyJS~r$$>Bww1K8%M0xDBkiP^b&46{jZw>!Vx$Dc
z@<LTTMq7Rm`xRJ%D`YiuS<ij0$q21MA;8!-K)t(L9ns9itgaR2gDNi*h_vOQojAa(
z56vn&lwcrZHTW-5yco@wt%7tMOt%=T;ZB9XEs7BM@pv%)INk8<GdP!CdiGhD^%c#G
z8+O&X;QZ;`3)F~azM=-GMa<LLk<fSAWGK#C`v!E27L!4jw)TzxIL){0%j*R=(yo1D
z6;LnsiPdX;l|I?G#rJ1lr%y6{?hE;)H1Qot2Pxjd=*&b+Fq5a8W|EUjk3aX2;Rb_-
z+E=2PBwcnx9hG}&^z(@YF9Qnlz7v}65=c16`5L%C7eH0Or){heV9A@ICMp>n_X`m|
zIAT*G;d6ns9CaXVvFBy*CBNIz0$+O&FoKv_v0l+b*F68AOOXx-SA*f8j^gL;kl`#w
zB~TjR@4Hz$@Cu}Ptd~I`S*nqCx>KbVH{S=V48it}!XT+C@1un^MyyJcL6I9wI4Il_
z>j`^KQ2^BeDirh^YpJbhvawQ4GX<Sdr<o0Ly-QM5PHE9h=%NeTLdj^=!zbiXL4q&h
zq3!>;vVdIG;Yb^q1NmVrT+{j-oFCSzx?Id)k{CQ}4}-7S6M}bAOYy_5fq$sk&#E2n
zLaWfSNT_XnMYp;)&6~Y177p4H+>-IfJMfvU7288;*j76qBa<;}HqzGL8HL5dbg%bL
zpKa3LY{s<uj_PVBxHB1sL`4OsG;y{QMsNKnk4*r?KdmWqj?g>BlcEq$Z-V0_(=Gbo
zuYMAD`v<nRk%gU@FVmUy<f4nLrxm|Sg)jK6zjC-f0IMu<-q}{kl;ZuJdat~950)_s
z+jkFU8HK^EI?9_r3j3FPuqC4~<$GB@qjD7XD$MYOCViH88MW7b2Q%q*m_98%q!^p@
zY!Y4e9rhPve6cD{xvt+Bfm_DiYBDCnYs_D6!ITnhGO`<Xh#pxy<$=H4a<__GaP3Ov
zGixPu9g`8)*vOZ3Wbrh-fKFR7Km1W|NyfK<SC-7dJUkx!l6L)C;_yv6*RlLzOQ{B?
z1npna)rSlXc<dE;6fx;BCG?pQB?=z(<pF>6JDBkd^skPW#+ELFz|>MW3KG*vmoA;-
z0?93lzZ0)S3aDM`7#)!dzBB11c<mSsZzO9EdU1fXzc#{BMlwC(9Rr~k;I>1Fjv|DL
zrwh=X+@sy8CEeoai4;VSnMh(mJ84OZ`tf&gZcD6HyaCcq4#LNvU`>vNgB&N}a4olq
z<wurP?4y|_^SJ8e)K&6tcoThm*?NIt{wj-|v~QVC*}z9pCB3~Y-W<a8U6<X;cV^gD
zv5pO}p<ILKCgzJcTnZAd`$UUm8t}0)4Lty*)BG2D;pr{{mB>{GY5MZy=_y{{ZeP3a
z1hl!ezNeZQ`)T<FrF6v<a4;&DyGB67rsV)jvWSSTS^g-zJ{??c#+cq&-VG0aAC*pX
zC8LC#2qa`3j6@}i6ZofKoxo4`AYm!&>TsmhQ9LGFc$9S12g!k9oWScnBc!T$C8?Xb
zl03QLiMDJ{4vA>XA+f--cmoo|ISIT2endw!?{Lh6u^*w>^k|-sobC|^N=l7<MfyCl
zav+))rcJQ8-0-kg56^7+bSEh<0k$JZC|*al#RGgTJh;^YaWr2~x$T~TDqza=Jh9G6
z9`!g$TG2dWfQP%-bSBsUb1>H$zWa&uh@VH?yHQjv92$q>E$)F|x1SFh%#a0pxK<C~
zF9qFunA~v)xuV=4^jGab2Cct5-AwAgM!Y)()^;ahntBk5Vh6KB&BUD#6lsVz0HwR%
zN$RJfC_@3GVv4{E?7(zSePJ^Aqyk2~I46RS_iCCxFKG@E-VbKa^UTR1CuSTC?)1`a
zYy@2R;k!Ac)(hmolD)0ole}RJKi4ycueub)rwv5$;^oKQcKqkG9Vg$;X+Ihi2GM*R
zgWxIg5A#=~KO;mz*!M(3h%J4(NLX*}eSv;fHvfUFZ=%o<Io?A2*X8g-Q7BBfD1R!?
zuzyHrzE}oX;D6DQos%DlF8!!;Zp7Qe*x(V``&(Cfl!wJmr)F3_-4OxR8n(3<zT=>~
z_NkdV>=Uw22gA08V04=EOg5m{OT>^5quRKk`XM>-s)7y;a@Ty){5d<WHnCh}Lf{p&
zkF`#uHPBG{cLprwUM#S|Z@Vm32L@J5<hkyb0%27%!xG4$NYpT8g5{!bm)y02UE{la
zPN;-(xvGyAyi^a?^u4qUqrfj-ek*DglUVCjPZ+9i_9b4ejYHaInH5sIPxSZtK7fk3
z;KT1>)PHaYimX{FLdFwFtBb^j^w%`+`d-Z&tw1&!y_zR}OLOa2#Nb19a;BwGcFKx{
z>GY%e@dBfGLKeRbT&eF0pHP1w5@il1Tb_hSt=>P3N2biQD3NJ+k)C*M;)IC%@N=P{
z?#GY3HZkt^O~R%}_P;JCLF6W*D5QS@P0-Wn8z;k)`;Ltd-~zg0<74pu0~;T86|mZd
zr}Zgk^3KRv&4iJ^<(i=X3DW7=dYdawL}L(v06Oxmn&(NgjD)cRJN+2~o9p(;#RrT7
zS^|;VU+ZV_gFuhUlvi8NfZPKkCL_|;`X5(L5(~2qV6?1R^e%1QD`$>D`()Oo@?gmM
zCeKmOvbz~Rvy*pc9Uv$Si1x{Q<ssi&*5TAMd7tjayMNhyR7U7inf66lH#P9WMi2`9
z@&=7=cm~JQl7{MOuWNYF%wlF@{{_T?=BwDN@snOLen_qhDmu12095eCda{9P8}(fN
zE;^<0*Y~7tZu}*V4_s}0o1^mfIJ$T9-?_nUbo=jDa`wi6VavlDXQwpJ`*va@J0R$Q
z51xqjtWE+`!)c1N7w%Aa;E1w%>@<GsLg1mxx6WlOf7*Hx3xO?f)L~(pCLB4*qT_*-
zZ40^ao!c}!{i4i#I^>%!*ZSwG`O!n^>u*lx1}W`$^C942!Ghc2%9{@w^WV?}LM);;
z>p-F$);#P>QrSAU(GfX`=5L?KrEH~h{0~O6+GzoHsGZz^fBQq>Ty9I?vz8Uy_}pFp
z_tEFxgrnnVwX74~1Z$FH&uzL{P7!vgO61ZmImx)W<^NYAcNZuzn=9QJnB#v5!)0+`
z_p>;i#_zER><#v--C{LevS%h#-<x~p;0*fZ9vHi5TC3B11Bx?(uPQp`(_LgeL<t!{
zkNJ8b#X|eUA!r)Me5b);GdT)nIKBIQRkiBC+18(9&hDp%x1SZRL5P<69fNe$+nIt4
z6rakXf9Jusv9bYo`swjMex;FG6=o%05@`FMJ{R5rz%^OCLcM!`&NZ~t&-SL{7%J?0
zC_8Nsj=tbq2l`^+!&D@cbbjhv3RnC4zC*xtCMa$mffuw-<+`(ryGGz*mP{kUX;3lt
z+!4UTpVBtd>V1X6e&tB9i=Nw;#C08_Bm4B+wj<Q=&a1+4a5-u7_yhiT=3}lpK(7ZT
zan>L;1ar9F!}R%JbwZ|Ono(H}4<Rwu3%-SI7k&THEP+N)fu4QzdT=t%q~qWHsc;w$
z`NSvo(!zJE;!~I|iG8)Ye&5nJ#dP?FXZ3OJ82#J3IS=nRa@WJXzD8d^_*Oxu9n*+#
zSwSz~4O1%m%(qXSyLKF*i`(mP8ok{9g1`(1Z^1DgQ-veo^X8zVDA3Tc3JZTy&FrSS
z{TadsDqSwM@2_-qs+huI2&<y`toJnR8dui&u+9vvOAl!D2Se);fOmz~I)EP!t#9ww
z=ud{$g#hmkt?fYH6I$~JHTvGrI{(0Yjs9$Ca~7D-h1MCs+!tEUg7rXXoeqL7Imy+g
zYd(bL>|iCutbvl+5!i6R&Ltj)-4R*5eNztXh3+q}R>E<5N(aDUCTpX&52h$Ykaf3N
z_6XViz7OQ%kQx2*T_W?LRPM%Jy7W-ugjv}V^ZRw^fh@~oX&lX3r8p;^zIEuIgrlne
z&e7gOY1V_PE}QRGNY~Fa!}Y{Z+Uua@LRwr=>*F6yBO(2{O^gSkwway58YbI=rUz;6
zVY`w!-`m9Az>dQM7-EXi1)o?-H*_UK9qjFjS3qG}0QGeJ9O`@Q(dAs}5&H7cR0Xrr
z3mE@Vt1t|lr)2Rsy?t~sj;2NLCrvrdV3O%{D*Q>e{cGRTZNonIo>RU#iC^a-Ex#$m
zafABb->k5Mj>oCxSk@!aw=_tQ+TbG=S{gyOKnz$GU8o5IagPjM13#&w0;dQ8zH_wm
z*eoR@SI>8p(%Z+{l+7vGQ5x8Ld>NjDPHB3Ap9Fj0KcwvmegKWRC%C9ZxgTOqX<#Z2
zeyripzXvDX7T_=s&tSd5Q_!T&1goNH!G~$k5a46jFM60!PO{5)+NUoO6H#=(?<o9z
zBh1h65Oj(9KirVOHc$FRvt(-V9mrz_TucqYda3<Hybz-HQ0IvZWwY2X=F_$lNid^)
zd?F8Xo<Ta{&shqpNe0xCKhNZP2kG`d|5Aa0@P>Cj8Vb?Pq*J>!T>c>aS@*)U&^f^+
zbeHef@P|95782g_At5yZo`d2UeiM{&AlQ8n-xap$qqM+|kIh&(1!(YhCB1Yi?cOH7
zCsAOf3^(x_YVH|S!ViDNEe&Lz&I`j+>6+er1?H9k*4NvQAx{FwK79iI-hPT2zL;qq
zO)f<pG~{cYA0ERCI1Ooa3L_+548sliR?oixNdt<*V~C0azn0R5FCKz^clZlq8WY7p
ztQUUS^j9U-F~ysfq`)Jnc0~R{HKBp>=hB3`n~Zab`J*Nb$k*Xgkxav>(eSAS=338b
z99NJq;M)f>+1xqg`y8SVf5|BQT%!!o=l)%zjA%WdK=vT*BIoCjF-|h6B;Y@nqSj6`
zv%U8(0v7r~0|PHM(19=4at-}-`CmU~{`gtnSmqa+*Z(m4<?4T2p@j3HzWdYeZTR!|
zZ8FZ6TK~7=Nvh(x=l_@DeQ>cr67Tp@HK6O9s(4ACI**hFuADE%ob!CZHZW6F{0AE-
z-tbjHm=cLbX2#&9LM)sIGqQ;2r1_Uqxt3x2@?{76b>Z^Hv7N)38Q+@W=?^ZKmf?Ww
zZ{^(2?ho<*2%|0(vl!Me$5^4+`7fmEV$@Gs5q$BZtEoT}0e?fNDn;61AESTDFUHU%
zS8WjX;MJ+ZRW+=TnOD>9ZQ`%ppPAPlo26ut+B5#H(I<vFy8!E{p>_TRjXoo^PW$@a
z)lvO-dhFUvLFtfe;^YU5lnvbGH)!eLB10y-0$DY&Z-Ur0>Q2lIoE@}dxE>=QAF4`e
z`Zs2w9j-?+ah#>q-y}_#+Nqgd&3q-9%%ry&=9ubziXd?b4Sv%jd;^>0Z1G%R!}V+q
zCkA?M9_NJ^_!l{n4i4V-eWJ42!n8R4{X^WPsKE8_d5rCWZ+{rXf&mCqs3-*n?;PPV
z-?W#*^KoL+_Z)t2+`t`;U`>~^<b^WEkY)|~rW0ZKn{h=N%_qJAb<$$+B2Cl3@^})k
zUFC7zggY#AP}M+{tWU(wKAl~5jPiH99*(nkLC>@^i49F>Bk^yz27Sk4QTTB@3hrsz
zHU_8P-F5Vi!526j-O)J~mxqD=9X}d}&vQ7YX>1(M<D7Roo{7VYuy6<b5GISxrcOOx
zBSfi3T<WkGa0ynn@G85vDHxCEani(&AL8*>SU^ApvyY|Y(s-P~3nmT0jk3eilw!i=
zrm0Dao15kS1I9ir>Gw4sVBaY}RwW<r2%7K*k=)6Qj+Y<AYoBV8X5g+Z5*|<#+35pC
zu1GkG+Z)w1&5iY-chh5T{0^6|ZTi8De<En%EWzr?Z^~SadtirQC+2s=)Z!tGGdsAo
zI7f|+-YZH?_Bvc{xCBN)7K{juEP*PS!Qe$_)7d(_L<!_ezW`E8J)X`^t*Xa4<AB8h
z?+J`hNowbvrc?FU2wrQtR*x@p-9I#a;lba+fxWNdqZsxbP3yr!!Ve%kVo>aE8h8z#
nRCfDh*abJ@6PWK<^*a807$+H;mQz*OdWxT8q4^ud?$ZAPiVtTI

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
